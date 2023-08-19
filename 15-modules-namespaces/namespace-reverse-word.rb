module ReverseWorld
  def self.puts(text) # O módulo evita a colição desse método puts com o puts do ruby
    Kernel::puts text.reverse.to_s # Kernel:: Forma raiz de executar o método puts sem conflitar com o método que criamos agora(Chamando o módulo Kernel do ruby que comporta esse método puts)
    # .reverse.to_s => .reverse é um método para escrever a string ao contrário; .to_s => converte em string
  end
end

ReverseWorld::puts 'O resultado é' # Chamada de um modulo e seu método