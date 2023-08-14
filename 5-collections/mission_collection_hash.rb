hash = {}

puts 'Programa para informar chave e valor do objeto.'

3.times do 
  print 'Informe uma chave: '
  key = gets.chomp

  print 'Informe um valor: '
  value = gets.chomp

  hash[key] = value
end

puts ''
puts "O Hash ficou assim: #{hash}"
puts ''

hash.each do |key, value|
  # p key, value
  puts "Uma das chaves é #{key} e o seu valor é #{value}."
end
