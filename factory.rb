class Creator
  def factory_method
    raise NotImplementedError, "#{self.class} has not implemented method '#{_method_}'"
  end

  def some_operation
    product = factory_method

    result = "Creator: The same creators's code has just worked with #{product.operation}"
    
    result
  end
end

class ConcreteCreator1 < Creator
  def factory_method
    ConcreteProduct1.new
  end
end


class ConcreteCreator2 < Creator
  def factory_method
    ConcreteProduct2.new
  end
end


class Product
  def operation
    raise NotImplementedError, "#{self.class} has not implemented method '#{_method_}'"
  end
end

class ConcreteProduct1 < Product

  def operation
    '#{Result of the Concrete Product1}'
  end

end

class ConcreteProduct2 < Product

  def operation
    '#{Result of the Concrete Product2}'
  end
end


def client_code(creator)
  printf "Client: Im not aware of the creators class, but it still works"  
  printf "#{creator.some_operation}"
  puts
end

puts 'App: Launched with the Concrete Creator1'
client_code(ConcreteCreator1.new)

puts 'App: Launched with the Concrete Creator2'
client_code(ConcreteCreator2.new)