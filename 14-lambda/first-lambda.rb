first_lambda = lambda { puts "My first lambda"}
first_lambda.call # Ela pode ser guardada em uma variável para ser chamada futuramente com o método **call**
puts ''

#======================================================

# Podemos abreviar a declaração de uma lambda da seguinte forma "->"
first_lambda = -> { puts "My first lambda"}
first_lambda.call
