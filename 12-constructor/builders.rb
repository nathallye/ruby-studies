class Person
  def initialize(name, age) # Quando iniciamos a instância o primeiro método que ele busca é o initialize, se não encontrar, não faz nada, mas como foi definido, ele espera receber dois parâmetros para esse método (name, age)
    @name = name
    @age = age
  end
 
  def check
    puts "Instância da classe iniciada com os valores:"
    puts "Name = #{@name}"
    puts "Idade = #{@age}"
  end
end

# .new é o método construtor da classe
person = Person.new('João', 12) # quando chamos o .new e tem parâmetros definidos no método initialize é necessário passar esses parâmetros aqui
person.check