# Como você já sabe objetos possuem informações e comportamentos.
 
# Agora é hora de  aprender como adicionar e recuperar **informações** de um objeto.

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

# O primeiro método da classe **Dog** retorna o valor da variável de instância @name. Se a variável ainda não estiver definida, o resultado será nil.
# O segundo método recebe um valor e o atribui a variável @name.

# Podemos dizer que o primeiro é para recuperar e o segundo para adicionar/alterar uma informação.

dog = Dog.new 
dog.name = 'Marlon' # .name : atributo da classe recebe 'Marlon'

puts dog.name



# Declarar os métodos de um atributo pode ser vantajoso caso queira fazer algo além de definir o valor da variável de instância. De outra forma, existe uma maneira mais fácil de realizar esta operação.  

# O ruby disponibiliza um método chamado attr_accessor que cria os métodos var e var= para todos atributos declarados.

# O attr_accesso: cria métodos de leitura, escrita e variável de instância em uma classe.

class Dog 
  attr_accessor :name, :age # atributos 
end


dog = Dog.new 

dog.name = 'Marlon'
puts dog.name

dog.age = '1 ano'
puts dog.age


