##### **Protected**

# A **diferença** entre ele e o **private**, é que o método **protected** pode ter como receptor qualquer instância de sua classe.

class Foo
  def call_protected(instance) # O método recebe uma instância como parâmetro
    instance.bar # Utilizamos a instância para chamar o método bar (protected)
  end

  protected

  def bar
    puts "protected method"
  end
end

instance_1 = Foo.new # Cria uma primeira instãncia da classe Foo
instance_2 = Foo.new # Cria uma segunda instãncia da classe Foo

instance_1.call_protected(instance_1) # Chama o método call_protecte através da instância criada, e passa a mesma como argumento do método

instance_1.call_protected(instance_2) # Ele aceita a partir da primeira instância acessar uma informação de uma segunda instância

# Podemos utilizar o receptor **instance** para o método **bar** que é do tipo **protected, **por isso, é bom tomar cuidado ao utilizar um método **protected**.