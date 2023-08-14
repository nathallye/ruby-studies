# Saída 
# print para não ter quebra de linha no final da saída
print 'Digite seu nome: '
# a variável recebe a entrada de dados do usuário
# o método gests recebe o que o usuário digitar e atribui a variável nome
# o método .chomp retira a quebra de linha
name = gets.chomp
# para interpolar a string tem que ser declarada com aspas dupas ""
puts "Hello #{name}!"