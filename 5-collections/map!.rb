array = [1, 2, 3, 4]

puts "\nExecutando .map! multiplicando cada item por 2"
puts "\nArray Original"
puts "#{array}"

# .map! a "!" força que o conteúdo do array original seja alterado
array.map! do |element| 
  element * 2
end

puts "\nArray Sobrescrito"
puts "#{array}"
