def compare(a, b) # método onde vai comparar a e b
  puts 'Comparando se o primeiro valor é maior que o segundo...'
  a > b
end

first_value = 5
second_value = 3

result = compare(first_value, second_value) # o valor da variável result vai ser o "return/retorno" do método "compare/camparar"

puts "O resultado da comparação é: #{result}."

# OBS.: Vale resaltar que o retorno sempre será a ultima linha de instrução do método