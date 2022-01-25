# Em blocos que ocupam várias linhas, faça uso do **do..end**

foo = {2 => 3, 4 => 5}

foo.each do |key, value| # do : inicio do bloco
  puts "key = #{key}"
  puts "value = #{value}"
  puts "key * value = #{key * value}"
  puts '---'
end # end : final do bloco