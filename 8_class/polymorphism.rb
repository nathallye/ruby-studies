class Instrumento
  def escrever
    puts 'Escrevendo '
  end
end
 
class Lapis < Instrumento
  def escrever
    puts 'Escrevendo à Lápis' # Sobrescrevendo o método escrever da classe pai
  end
end
 
class Caneta < Instrumento
  def escrever
    puts 'Escrevendo à Caneta' # Sobrescrevendo o método escrever da classe pai
  end
end

class MaquinaDeEscrever < Instrumento
  def escrever
    super # pega tudo que está dentro do método escrever da class pai
    puts 'com a Máquina'
  end
end

class Teclado < Instrumento 
  # Não sobrescreve nenhum método da classe pai
end

lapis = Lapis.new
lapis.escrever

caneta = Caneta.new
caneta.escrever

maquina = MaquinaDeEscrever.new
maquina.escrever

teclado = Teclado.new
teclado.escrever

=begin
instrumentos = [Lapis.new, Caneta.new]
# Chamamos o método escrever pra qualquer instrumento
Instrumentos.each do |instrumento|
  Instrumento.escrever
end
=end

#O  comportamento do método escrever depende do Objeto que o invoca.

# OBS.: O Polimorfismo é um dos pilares da POO. 
# Ele permite executar o mesmo método de diferentes formas para cada objeto.

