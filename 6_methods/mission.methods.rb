def potentiation(base, exponent)
  puts 'Calculando...'
  base ** exponent
end

print 'Digite o valor da base: '
base = gets.chomp.to_i

print 'Digite o valor do expoente: '
exponent = gets.chomp.to_i

result = potentiation(base, exponent)

puts "O resultado de #{base} elevado a #{exponent} potencia é: #{result}."
