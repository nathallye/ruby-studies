2.times do # executa uma repetição por um determinado número de vezes
  puts 'Estou aprendendo times!'
end

puts '################################################################################'

puts 'Podemos usar também o index no times'
puts 'Da mesma forma de um array o valor do index começa como 0:'
5.times do |index|
  puts index
end

puts '################################################################################'

puts 'Da mesma forma podemos acessar as posições do array usando o times:'
names = ['João', 'Alfredo', 'Juca']
# Igual ao array, o times começa com índice 0 
3.times do |index|
  puts names[index]
end