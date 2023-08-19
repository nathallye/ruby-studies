numbers = []
i = 1

=begin 
TRANSFORMANDO ISSO:
print 'Digie o primeiro número: '
numbers.push(gets.chomp.to_i)

print 'Digite o segundo valor: '
numbers.push(gets.chomp.to_i)

print 'Digite o terceiro valor: '
numbers.push(gets.chomp.to_i)  
=end

# NISSO: 
3.times do 
  print "Digite o #{i}° número: "
  numbers.push(gets.chomp.to_i)
  i += 1
end

puts "\nO array é: #{numbers}"

puts "E seus números elevados a segunda potência ficam assim:"

numbers.each do |num|
  result = num**2
  puts "#{num}^2 = #{result}"
end
