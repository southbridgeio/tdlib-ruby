require 'active_support/all'

AUTOLOAD_BASE_DIR  = 'tdlib/types'
TD_API_TL_LOCATION = File.join(File.expand_path("../../../../", __FILE__), %w(td td generate scheme td_api.tl))

def parse_tl_type(type)
  if (vector = type.scan(/[vV]ector<(.*)>/)).length > 0
    "TD::Types::Array.of(#{parse_tl_type(vector[0][0])})"
  elsif type.match?(/[iI]nt\d\d/)
    'TD::Types::Integer'
  elsif type.match?(/[dD]ouble/)
    'TD::Types::Float'
  elsif type.match?(/[bB]ytes/)
    'TD::Types::String'
  else
    "TD::Types::#{type.camelcase}"
  end
end

def parse_argument_description(argument, description)
  statements = description.split('; ')[1..-1]
  
  if statements.length == 0
    statements = description.split(', ')[1..-1]
  end
  
  optional = nil
  
  if statements.length > 0
    statements.each do |statement|
      statement.downcase!
      
      if statement.match?(/(can be null|may be null|can be empty|may be empty|optional|if empty|empty until|empty for|if available)/)
        optional = true
      elsif statement.match?(/(must be non-empty)/)
        optional = false
      end
    end
  end
  
  {
      argument => {
          description: description,
          optional:    optional
      }
  }
end

def parse_tl_entry(tl_entry)
  info = {}
  arguments = {}
  
  # A fix for multiline comments
  tl_entry.gsub!("\n//-", " ")
  
  tl_entry.strip!
  
  tl_entry.split("\n").each do |line|
    if line.start_with?('//')
      line.sub('//@', '').split(' @').each do |at_statement|
        if at_statement.start_with?('class')
          info[:class] = at_statement[6..-1]
        elsif at_statement.start_with?('description')
          info[:description] = at_statement[12..-1]
        elsif at_statement.start_with?('param_description')
          arguments.deep_merge!(parse_argument_description('description', at_statement[18..-1]))
        else
          argument    = at_statement.split(' ')[0]
          description = at_statement[(argument.length + 1)..-1]
          
          arguments.deep_merge!(parse_argument_description(argument, description))
        end
      end
    else
      args, super_class = line.sub(';', '').split(" = ")
      args = args.split(' ')
      
      info[:class]       = args[0]
      info[:super_class] = super_class
      
      args = (args[1..-1] || []).map do |a|
        arg, type = a.split(':')
        
        { arg => { type: parse_tl_type(type) } }
      end.reduce(&:merge) || {}
      
      arguments.deep_merge!(args)
    end
  end
  
  if !info[:super_class] or info[:class].downcase == info[:super_class].downcase
    info[:super_class] = 'Base'
  end
  
  # Setting all arguments to optional, if at least one argument stated to be required
  # noinspection RubySimplifyBooleanInspection
  if arguments.any? { |_,v| v[:optional] == false }
    arguments.select { |_,v| v[:optional] == nil }.each { |k,_| arguments[k][:optional] = true }
  end
  
  info[:arguments] = arguments
  
  info
end

def normalize_class_name(class_name, super_class_name)
  class_name = class_name.camelcase
  
  case super_class_name
  when 'ChatEventAction'
    class_name.sub('ChatEvent', '')
  when 'InputMessageContent'
    class_name.sub('InputMessage', '')
  when 'MessageContent'
    class_name.sub('Message', '')
  else
    class_name
  end
end

def build_hierarchy(classes)
  hierarchy = {}
  
  classes.each do |c|
    (hierarchy[c[:super_class].camelcase] ||= []).push(normalize_class_name(c[:class], c[:super_class]))
  end
  
  hierarchy
end

def build_lookup_table(classes)
  lookup_table = {}
  
  classes.each do |c|
    class_name       = normalize_class_name(c[:class], c[:super_class])
    super_class_name = c[:super_class].camelcase
    
    unless super_class_name == 'Base'
      class_name = "#{super_class_name}::#{class_name.sub(super_class_name, '')}"
    end
    
    lookup_table[c[:class]] = class_name
  end
  
  lookup_table
end

# Splits tl file into usable chunks. Usually starts with a SuperClass followed by subclasses.
def split_tl_file(tl_file, range = 0..-1)
  # A fix for some entries (mainly chatAction ones) having a different structure from the rest
  tl_file.gsub!(";\n//", ";\n\n//")
  
  tl_file.split("\n\n\n")[range].map { |e| e.split("\n\n") }.flatten
end

# Partially taken from ActionView's word_wrap. Sowwy ;w;
def wrap_comment(comment, indent = "  ", line_width: 117,
                 start_sequence: "#{indent}# ",
                 first_start_sequence: start_sequence,
                 break_sequence: "\n#{indent}#   ")
  comment.split('. ').map.with_index do |sentence, i|
    this_start_sequence = i == 0 ? first_start_sequence : start_sequence
    
    line = "#{this_start_sequence}#{sentence}.".split("\n").collect!.with_index do |line, j|
      this_line_width = j == 0 ? line_width + 2 : line_width
      
      line.length > this_line_width ? line.gsub(/(.{1,#{this_line_width}})(\s+|$)/, "\\1#{break_sequence}") : line
    end.join(break_sequence)
    
    if line.end_with?(break_sequence)
      line = line[0..-(break_sequence.length + 1)]
    end
    
    line
  end.join("\n")
end

def wrap_params(param_string, max_length, indent_num)
  if param_string.length > max_length
    param_string.gsub(/(.{1,#{max_length}})(\s+|$)/, "\\1\n#{' ' * indent_num}").strip
  else
    param_string
  end
end

def type_to_comment_type(type)
  type.gsub('TD::Types::Array.of(', 'Array<').gsub(')', '>').
       gsub('TD::Types::Integer', 'Integer').
       gsub('TD::Types::Float',   'Float').
       gsub('TD::Types::String',  'String').
       gsub('TD::Types::Bool',    'Boolean')
end

# Generates YARD documentation comment for each param
def attrs_to_yard_comment(attrs, key = 'attr')
  attrs.map do |attr, info|
    type = type_to_comment_type(info[:type])
    description = info[:description].gsub(@lookup_regex) do |m|
      @lookup_table[m.strip] ? "#{m[0]}{TD::Types::#{@lookup_table[m.strip]}}#{m[-1]}" : m
    end
    
    wrap_comment(description, "  ",
                 first_start_sequence: "  # @#{key} #{attr} [#{type}#{", nil" if info[:optional]}] ",
                 start_sequence: "  #   ", break_sequence: "\n  #   ")
  end.join("\n")
end

puts "Creating types directory"

FileUtils.mkdir_p "types"

puts "Writing Base class"

klass = <<-RUBY
module TD::Types
  class Base < Dry::Struct
    # throw an error when unknown keys provided
    input input.strict
    
    # convert string keys to symbols
    transform_keys(&:to_sym)
    
    # resolve default types on nil
    transform_types do |type|
      if type.default?
        type.constructor do |value|
          value.nil? ? Dry::Types::Undefined : value
        end
      else
        type
      end
    end
    
    def to_hash
      { '@type' => LOOKUP_TABLE.key(self.class.name.sub('TD::Types::', '')) }.merge(super)
    end
    alias_method :to_h, :to_hash
    
    def to_json(*args)
      to_hash.to_json(*args)
    end
  end
end
RUBY

File.write 'types/base.rb', klass

puts "Parsing td_api.tl"

# Reading the TL file and splitting it into classes and functions
@classes, @functions = File.read(TD_API_TL_LOCATION).split("\n\n---functions---\n\n")

# First entry in td_api.tl is typecasting, it's worthless for us.
# Last entry before functions is a testing class, once again worthless
@classes = split_tl_file(@classes, 1..-2)

# Last function in td_api.tl is for testing, another worthless thing for us
@functions = split_tl_file(@functions, 0..-2)

puts "Converting classes into Ruby types"

@classes = @classes.map { |c| parse_tl_entry(c) }
@class_names = @classes.map { |c| normalize_class_name(c[:class], c[:super_class]) }
@class_hierarchy = build_hierarchy(@classes)
@lookup_table = build_lookup_table(@classes)
@lookup_regex = Regexp.union(@lookup_table.keys.select { |k| k.match?(/[a-z]+[A-Z][a-z]+/) }.map { |k| /\W#{k}\W/ })

@classes.each do |class_info|
  class_name       = normalize_class_name(class_info[:class], class_info[:super_class])
  attributes       = class_info[:arguments]
  description      = class_info[:description]
  super_class_name = class_info[:super_class].camelcase
  
  if (subclasses = @class_hierarchy[class_info[:class]])
    autoload_statements = <<-RUBY
    %w[
      #{subclasses.map { |c| c.sub(class_name, '').underscore }.join("\n      ")}
    ].each do |type|
      autoload TD::Types.camelize(type), "#{AUTOLOAD_BASE_DIR}/#{class_name.underscore}/\#{type}"
    end
    RUBY
  else
    autoload_statements = ""
  end
  
  if super_class_name == 'Base'
    file_name  = class_name.underscore
    class_name = "#{class_name} < Base"
  else
    file_name  = "#{super_class_name.underscore}/#{class_name.sub(super_class_name, '').underscore}"
    class_name = "#{super_class_name}::#{class_name.sub(super_class_name, '')} < #{super_class_name}"
    
    FileUtils.mkdir_p "types/#{super_class_name.underscore}"
  end
  
  if attributes.blank?
    attributes_doc = ""
    attributes     = ""
  else
    attributes_doc = "\n  #\n" + attrs_to_yard_comment(attributes, 'attr')
    
    attributes = "\n    " + attributes.map do |attr, info|
      "attribute :#{attr}, #{info[:type]}#{ ".optional.default(nil)" if info[:optional] }"
    end.join("\n    ")
  end
  
  unless description.blank?
    description = "\n#{wrap_comment(description, "  ")}"
  end
  
  klass = <<-RUBY
module TD::Types#{description}#{attributes_doc}
  class #{class_name}#{attributes}
#{autoload_statements}  end
end
  RUBY
  
  File.write "types/#{file_name}.rb", klass
end

puts "Generating Types class"

lt_max_length = @lookup_table.max_by { |k,_| k.length }[0].length

lookup_table = @lookup_table.map do |k,v|
  indent = " " * (lt_max_length - k.length + 1)
  
  "'#{k}'#{indent}=> '#{v}'"
end

klass = <<-RUBY
require 'dry-struct'
require 'dry-types'

module TD::Types
  include Dry::Types.module
  
  LOOKUP_TABLE = {
      #{lookup_table.join(",\n      ")}
  }.freeze
  
  module_function
  
  # Recursively wraps a hash into typed classes
  def wrap(object)
    # Wrapping each entry in array
    if object.kind_of?(::Array)
      object.map { |o| wrap(o) }
    elsif object.kind_of?(::Hash)
      type = object.delete('@type')
      
      object.each do |key, val|
        if val.respond_to?(:each)
          object[key] = wrap(val)
        end
      end
      
      unless type
        return object
      end
      
      if (klass = LOOKUP_TABLE[type])
        const_get(klass).new(object)
      else
        raise ArgumentError.new("Can't find class for \#{type}")
      end
    else 
      object
    end
  end
  
  # Simple implementation for internal use only.
  def camelize(str)
    str.gsub(/(?:_|(\\/)|^)([a-z\\d]*)/i) { "\#{$1}\#{$2.capitalize}" }
  end
  
  %w[
    #{(@class_hierarchy["Base"].map { |c| c.underscore } + ['base']).sort_by { |c| c }.join("\n    ")}
  ].each do |type|
    autoload camelize(type), "#{AUTOLOAD_BASE_DIR}/\#{type}"
  end
end
RUBY

File.write 'types.rb', klass

puts "Converting functions"

@functions = @functions.map { |c| parse_tl_entry(c) }.sort_by { |c| c[:class] }

# Converts TDApi functions into methods. Still need human touch haha
@functions = @functions.map do |func|
  method_name  = func[:class].underscore
  params       = func[:arguments]
  description  = func[:description]
  # TODO: Replace InputMessageContent and others (see #normalize_class_name)
  return_class = type_to_comment_type("TD::Types::#{func[:super_class].camelcase}")
  
  param_max_length = params.merge({'@type' => nil}).max_by { |k,_| k.length }[0].length
  
  if params.blank?
    params_doc      = ""
    method_params   = ""
    func_params = ""
  else
    params_doc = "\n" + attrs_to_yard_comment(params, 'param')
    
    # TODO: Fix mixup of =nil params (only in set_password)
    method_params = params.map do |attr, info|
      "#{attr}#{ " = nil" if info[:optional] }"
    end.join(", ")
    
    method_params = "(#{wrap_params(method_params, 118 - (method_name.length + 5), method_name.length + 7)})"
    
    func_params = ",\n              " + params.map do |attr, info|
      indent = " " * (param_max_length - attr.length + 1)
      
      "'#{attr}'#{indent}=> #{attr}"
    end.join(",\n              ")
  end
  
  unless description.blank?
    description = wrap_comment(description, "  ")
  end
  
  <<-RUBY
#{description}
  ##{params_doc}
  # @return [#{return_class}]
  def #{method_name}#{method_params}
    broadcast('@type'#{" " * (param_max_length - 4)}=> '#{func[:class]}'#{func_params})
  end
  RUBY
end

klass = <<-RUBY
# This is a generated module from current TDLib scheme
# It contains all available TDLib methods
module TD::ClientMethods
#{@functions.join("  \n")}end
RUBY

File.write 'client_methods.rb', klass

puts "Done. Please look through client_methods.rb carefully, especially the set_password method!"
