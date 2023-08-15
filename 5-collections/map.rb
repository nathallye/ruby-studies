array = [1, 2, 3, 4]
 
puts "\n Executando .map multiplicando cada item por 2."

# .map não altera o conteúdo do array original
new_array = array.map do |element| # resultado do map vai ser um novo array, que vai ser armazenado na variável new_array
  element * 2
end

puts "\n Array Original"
puts " #{array}"

puts "\n Novo Array"
puts " #{new_array}"
