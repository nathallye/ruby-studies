text = 'Olá, tudo bem? Meu whats app é (99) 7 4321-1234'
standard = /\(\d{2}\) \d \d{4}-\d{4}/.match(text)

puts 'O objeto:'
p standard # Printa o objeto 
puts ''
puts 'Valor do objeto:'
puts standard # Printa o que tem dentro do objeto