class AbstractFactory
  def create_chair
    raise NotImplementedError
  end

  def create_sofa
    raise NotImplementedError
  end

  def create_coffe_table
    raise NotImplementError
  end
end

class ArtDecoFactory < AbstractFactory
  def create_chair
    ArtDecoChair.new
  end

  def create_sofa
    ArtDecoSofa.new
  end

  def create_coffe_table
    ArtDecoCoffeTable.new
  end


end


class VictorianFactory < AbstractFactory
  def create_chair
    VictorianChair.new
  end

  def create_sofa
    VictorianSofa.new
  end

  def create_coffe_table
    VictorianCoffeTable.new
  end 
end

class ModernFactory < AbstractFactory
  def create_chair
    ModernChair.new
  end

  def create_sofa
    ModernSofa.new
  end

  def create_coffe_table
    MordernCoffeTable.new
  end
end


class AbstractChair
  def format
    raise NotImplementedError
  end
end

class ArtDecoChair < AbstractChair
  def format
    puts 'art deco chair'
  end
end


class VictorianChair < AbstractChair
  def format
    puts 'victorian chair'
  end 
end

class ModernChair < AbstractChair
  def format
    puts 'modern chair'
  end
end



class AbstractSofa
  def format
    raise NotImplementedError
  end
end

class ArtDecoSofa < AbstractSofa
  def format
    puts 'art deco Sofa'
  end
end


class VictorianSofa < AbstractSofa
  def format
    puts 'victorian Sofa'
  end 
end

class ModernSofa < AbstractSofa
  def format
    puts 'modern Sofa'
  end
end


def code_client(factory)
  puts factory.create_chair.format #creating a modern chair
end

code_client(ModernFactory.new) #creating a modern chair
code_client(VictorianFactory.new) #creating a victorian chair