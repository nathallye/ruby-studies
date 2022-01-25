require_relative 'animal.rb' # . siginifica o caminho relativo que o arquivo estava atualmente. No caminho relativo onde ele está vai procurar o arquivo animal.rb
require_relative 'dog.rb'

animal = Animal.new # depois inicializa normalmente a instância
puts '---Animal qualquer---'
animal.pular
animal.dormir

puts '---Cachorro---'
cachorro = Cachorro.new
cachorro.pular
cachorro.latir