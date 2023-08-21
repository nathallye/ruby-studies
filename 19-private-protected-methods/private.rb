class Foo
  def call_private
    bar
  end

  private 

  def bar
    puts "private method"
  end
end

foo = Foo.new 

foo.call_private # Chamamos o método call_private que dentro dele chamamos o método privado bar
foo.bar # Se tentarmos chamá-lo a partir da instância foo (**foo.bar**), receberá uma mensagem de erro informando que este método é privado. Ou seja, não podemos chamar o método privado DIRETAMENTE.

# OBS.: O privete não aceita o método receber uma instância como parâmetro. Já o protected sim!