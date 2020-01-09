module TD::Types
  class Base < Dry::Struct
    # throw an error when unknown keys provided
    schema schema.strict
    
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
