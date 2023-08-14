# Voltando para o conteúdo envolvendo classes e métodos, conheça agora o método **method_missing. **Ele é utilizado para interceptar chamadas a métodos que não existem.

class Fish
  def method_missing(method_name) # Temos aqui o method_missing que recebe como parâmetro method_name(o nome do método que a pessoa está tentando executar e que não existe) automáticamente do Ruby
    puts "Fish don't have #{method_name} behavior" # Retorno de quando o método não existir
  end
  
  def swim
    puts 'Fish is swimming' # Retorno do método que existe
  end
 end
  
fish = Fish.new
fish.swim
fish.walk # Quando o método **walk** que não existe é chamado, o método **method_missing** faz uma interceptação. Nele é recebido como parâmetro o nome do método que não existe.
fish.teste