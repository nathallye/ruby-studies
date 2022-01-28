# Por padrão, todos os métodos definidos são públicos. Isso significa que eles podem ser acessados por qualquer um.
# Mas além dos métodos públicos, existem outros dois tipos de métodos chamados **private** e **protected**.


##### **Private**:
# Método interno de uma classe. Apenas os métodos públicos dessa classe ou de classes descendentes podem chamá-lo.
# O **self** é o único receptor de um método private.

class Foo
  def call_private
    bar
  end

  private # Tudo que vem depois dessa palavra reservada vão ser métodos privados

  def bar
    puts "private method"
  end
end

foo = Foo.new # Criamos a instância

foo.call_private # Chamamos o método call_private que dentro dele chamamos o método privado bar
foo.bar # Se tentarmos chamá-lo a partir da instância foo (**foo.bar**), receberá uma mensagem de erro informando que este método é privado. Ou seja, não podemos chamar o método privado DIRETAMENTE.

# OBS.: O privete não aceita o método receber uma instância como parâmetro. Já o protected sim!