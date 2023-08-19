module PrintDecorated
  def print_out(text)
    decoracao = '#' * 100 # Para não precisarmos escrever 100x esse simbolo
    puts decoracao
    puts text # Imprimir o texto que foi passado como parâmetro
  end
end

module Legs
  # Dentro desse módulo Legs, vamos incluir o módulo PrintDecorated; Os metodos desse módulo incluído vão estar disponiveis aqui dentro
  include PrintDecorated 
  
  def frontal_kick
    print_out 'Chute Frontal'
  end
  
  def side_kick
    print_out 'Chute Lateral'
  end
end

module Arms
  include PrintDecorated
  
  def right_jab
    print_out 'Jab de direita'
  end
  
  def left_jab
    print_out 'Jab de esquerda'
  end
  
  def hook
    print_out 'Gancho'
  end
end

class MuayThaiFighter
  # Herança multipla. Essa classe herdou todos os métodos dos módulos Legs e Arms.
  include Legs 
  include Arms
end

class BoxingFighter
  include Arms 
end

puts 'Lutador de Muay Thai:'
muayThaiFighter = MuayThaiFighter.new
muayThaiFighter.frontal_kick
muayThaiFighter.side_kick
muayThaiFighter.right_jab
muayThaiFighter.left_jab
muayThaiFighter.hook

puts "\nLutador de Box:"
boxingFighter = BoxingFighter.new
boxingFighter.right_jab
boxingFighter.right_jab
boxingFighter.hook