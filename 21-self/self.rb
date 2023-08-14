# **Self**
# No ruby, self é uma **variável especial** que **aponta** para o **objeto atual**.

class Foo
  attr_accessor :teste # essa class tem o atributo teste
  def bar
    puts self # A variável **self** aponta para o **Objeto** onde ela se encontra. No caso está apontando para uma instância da classe Foo e, por isso, as instruções **puts** **foo** e **puts** **self** retornam o mesmo resultado.
  end
end

foo = Foo.new

puts foo # **puts** **foo** e **puts** **self** retornam o mesmo resultado.
foo.bar # **puts** **foo** e **puts** **self** retornam o mesmo resultado.
# RETORNO => #<Foo:0x000055cab0e14a30>
             #<Foo:0x000055cab0e14a30>

# **Variáveis self em objetos diferentes possuem valores diferentes.**





### Com o **self** é possível criar **métodos de classe**, que não precisam de uma instância para serem chamados:
class Foo
  def self.bar # bar será o método de classe da classe foo
    puts self 
  end
end

Foo.bar # Conseguimos chamar o método bar sem criar uma instância, pois temos o método de classe definidos com o self. seguido pelo nome do método
# RETORNO => Foo (Nesse caso o método vai ser a classe)





### Também podemos utilizá-lo para se referir a atributos do objeto atual:
class Pen
  attr_accessor :color
  def pen_color
    puts "The color is " + self.color # self.color, estamos acessando o atributo color da classe Pen (atributo referente ao objeto que está)
  end
end

pen = Pen.new # Cria a instância
pen.color = "blue" # # Define a cor da instância
pen.pen_color # Chamamos o método pen_color
# O **self.color** retorna a cor do objeto **pen**.

pen2 = Pen.new # Cria a instância
pen2.color = "rose" # Define a cor da instância
pen2.pen_color # Chamamos o método pen_color
# RETORNO => The color is blue
#            The color is rose