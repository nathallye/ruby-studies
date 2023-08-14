# Um módulo é uma forma de agrupar classes, métodos e constantes. Ele é muito similar a classes, com a diferença de que você não consegue criar um objeto com ele pois ele não possui um construtor (new).

# **Namespaces**: É uma forma de organizar o seu código e evitar colisões de recursos que possuem o mesmo nome. 

module ReverseWorld
  def self.puts(text) # O módulo evida a colição desse método puts com o puts do ruby
    Kernel::puts text.reverse.to_s # Kernel:: Forma raiz de executar o método puts sem confitar com o método que criamos agora(Chamando o módulo Kernel do ruby que comporta esse método puts)
    # .reverse.to_s => .reverse é um método para escrever a string ao contrário e o .to_s => converte em string
  end
end

ReverseWorld::puts 'O resultado é' # Chamada de um modulo e seu método