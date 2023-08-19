# Percorre uma coleção de forma parecida ao **for**, porém, não sobrescrevendo o valor de variáveis fora da estrutura de repetição.

names = ['Joãozinho', 'Manoel', 'Juca']

name = 'Leonardo Rocha'

names.each do |name|
  puts name
end

print "\nAVariável name fora do laço de repetição NÃO é sobrescrita pelo ultimo item que passou pela iteração: "
puts name
