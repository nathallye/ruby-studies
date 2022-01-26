module ImpressaoDecorada
  def imprimir(text)
    decoracao = '#' * 100 # Para não precisarmos escrever 100x esse simbolo
    puts decoracao
    puts text # Imprimir o texto que foi passado como parâmetro
  end
end

module Pernas
  include ImpressaoDecorada # Dentro desse médulo Pernas, vamos incluir o módulo ImpressaoDecorada
  # Os metodos desse módulo incluído vão estar disponiveis aqui dentro
  
  def chute_frontal
    imprimir 'Chute Frontal'
  end
  
  def chute_lateral
    imprimir 'Chute Lateral'
  end
end

module Bracos
  include ImpressaoDecorada
  
  def jab_de_direita
    imprimir 'Jab de direita'
  end
  
  def jab_de_esquerda
    imprimir 'Jab de esquerda'
  end
  
  def gancho
    imprimir 'Gancho'
  end
end

class LutadorMuayThai # No estilo de luta Muay Thai temos os coportamentos de lutas com Pernas e Braços
  # Herança multipla. Essa classe herdou todos os métodos dos módulos Pernas e Bracos.
  include Pernas 
  include Bracos
end

class LutadorBoxe # No estilo de luta Box temos o coportamento de lutas com os Braços apenas
  include Bracos 
end

puts 'Lutador de Muay Thai:'
lutadorm = LutadorMuayThai.new
lutadorm.chute_frontal
lutadorm.chute_lateral
lutadorm.jab_de_direita
lutadorm.jab_de_esquerda
lutadorm.gancho

puts ''
puts 'Lutador de Box:'
lutadorb = LutadorBoxe.new
lutadorb.jab_de_esquerda
lutadorb.jab_de_esquerda
lutadorb.gancho