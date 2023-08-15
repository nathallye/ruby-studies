numbers = {a: 10, b: 30, c: 20, d: 25, e: 15}

result = [] 
largerNumber = 0

puts 'Programa para selecionar o maior valor de um hash e imprimir a chave e valor do elemento resultante.'

numbers.each do |key, value|
  if value > largerNumber
    largerNumber = value
    result = [key, value] # o array recebe a chave e o valor da do maior valor do hash
  end
end

puts "\nO Hash é: #{numbers}"
puts "\nE o maior número é o da chave #{result[0]} com o valor #{result[1]}."
