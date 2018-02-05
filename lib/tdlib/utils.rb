module TD::Utils
  module_function

  def generate_extra(query)
    "#{query.hash}#{Time.now.to_f}"
  end
end
