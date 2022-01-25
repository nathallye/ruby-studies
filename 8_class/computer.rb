class Computer # a class Computador
  def turn_on # tem o método: ligar
    'Ligando o computador...'
  end
  
  def shutdown # e o método: desligar
    'Desligando o computador...'
  end
end

computer = Computer.new # inicializando o objeto
puts computer.shutdown # chamando o método

# OBS.: Pilares da POO usadas aqui =>
# Abstração: foi abstraido um objeto do mundo real(O computador) e transformado em uma classe (A class Computer);
# Encapsulamento: foi dividida a aplicação em várias partes (métodos).