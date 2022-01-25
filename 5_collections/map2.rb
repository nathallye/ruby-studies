array = [1, 2, 3, 4]

puts "\n Executando .map! multiplicando cada item por 2"
puts "\n Array Original"
puts " #{array}"
# .map! a "!" força que o conteúdo do array original seja alterado
array.map! do |element| 
  element * 2
end

puts "\n Array Sobrescrito"
puts " #{array}"
puts ''
