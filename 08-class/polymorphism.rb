class Instrument
  def write
    print 'Escrevendo '
  end
end
 
class Pencil < Instrument
  def write
    puts 'Escrevendo à Lápis' # Sobrescrevendo o método write da classe pai
  end
end
 
class Pen < Instrument
  def write
    puts 'Escrevendo com Caneta'
  end
end

class Typewriter < Instrument
  def write
    super # pega tudo que está dentro do método write da class pai
    puts 'com a Máquina' # adicionando mais uma instrução
  end
end

class Keyboard < Instrument 
end

=begin
pencil = Pencil.new
pencil.write

pen = Pen.new
pen.write

typewriter = Typewriter.new
typewriter.write

keyboard = Keyboard.new
keyboard.write
=end

Instruments = [Pencil.new, Pen.new, Typewriter.new, Keyboard.new]
# Chamamos o método escrever pra qualquer instrumento
Instruments.each do |instrument|
  instrument.write
end