class Animal 
  def jump
    puts 'Toing! tóim! bóim! póim!'
  end
  
  def rest
    puts 'ZzZzzz!'
  end
end
  
class Dog < Animal 
  def bark
    puts 'Au Au'
  end
end
  
dog = Dog.new
dog.jump 
dog.rest
dog.bark
