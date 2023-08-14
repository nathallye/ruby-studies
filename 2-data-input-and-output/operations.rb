puts 'Soma entre dois números.'

print 'Digite o primeiro número: '
# .to_i serve para converter a entrada do usuário que vem como string para integer
number1 = gets.chomp.to_i

print 'Digite o segundo número: '
number2 = gets.chomp.to_i

addition = number1 + number2

puts "O resultado da soma entre #{number1} e #{number2} é #{addition}."