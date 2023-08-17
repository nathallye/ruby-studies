fruits = ['Maçã', 'Uva', 'Morango']

# a variável de interação pode sobrescrever outra que esteja fora da estrutura de repetição.
# ex.: se declararmos
# fruit = 'alguma coisa' 
# essa variável vai ser sobrescrita pela variável de interação com o mesmo nome
fruit = 'Laranja'

for fruit in fruits # percorre os elementos do arrays
  puts fruit
end

puts ''
puts "A fruta da posição 1 do array é: #{fruits[1]}"

puts ''
print 'Variável fruit fora do laço de repetição é sobrescrita pelo ultimo item que passou pela iteração: '
puts fruit