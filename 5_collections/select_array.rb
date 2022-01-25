array = [1, 2, 3, 4, 5, 6]

# realiza a seleção de elementos do array através de um condição pré-definida
selection = array.select do |element|
  element >= 4
end

puts selection