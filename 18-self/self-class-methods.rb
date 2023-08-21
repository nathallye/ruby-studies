
class Foo
    def self.bar # bar será o método de classe da classe foo
      puts self 
    end
  end
  
  Foo.bar # Conseguimos chamar o método bar sem criar uma instância, pois temos o método de classe definidos com o **self.** seguido pelo nome do método
  # => Foo (Nesse caso o método vai ser a classe)
  
  