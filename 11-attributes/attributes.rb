class Dog 
  # getter/ lendo o valor do atributo
  def name 
    @name # O retorno desse método é uma variável de instância chamada name
  end

  # setter/ definindo o valor do atributo
  def name= name # esse método vai definir esse atributo 
    @name = name # defini o valor do atributo
  end
end

dog = Dog.new 
dog.name = 'Marlon'

puts dog.name

class Dog 
  attr_accessor :name, :age # atributos 
end

dog = Dog.new 

dog.name = 'Margô'
puts dog.name

dog.age = '1 ano'
puts dog.age
