class Esportista
  def competir
    puts 'Participando de uma competição.'
  end
end

class JogadorDeFutebol < Esportista
  def correr
    puts 'Correndo atrás da bola.'
  end
end

class Maratonista < Esportista
  def correr
    puts 'Percorrendo o circuito'
  end
end

=begin
MUDANDO ISSO:
jogador = JogadorDeFutebol.new
jogador.competir
jogador.correr

maratonista = Maratonista.new
maratonista.competir
maratonista.correr 
=end

# PARA ISSO:
esportistas = [JogadorDeFutebol.new, Maratonista.new] # Foi criado um Array para salvar as intâncias de cada uma das classes que são herdadas de Esportista

esportistas.each do |esportista| # Usado o método de iteração each para percorrer o Array esportistas e executar os métodos
  esportista.competir 
  esportista.correr
end
