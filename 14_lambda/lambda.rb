# **Lambda**

# Bastante similar aos blocos com as seguintes diferenças:

# 1. Diferença: Uma lambda é iniciada com a palavra **lambda.**

first_lambda = lambda { puts "my first lambda"}
first_lambda.call # Ela pode ser guardada em uma variável para ser chamada futuramente com o método **call**
puts ''




# Podemos abreviar a declaração de uma lambda da seguinte forma "->"
first_lambda = -> { puts "my first lambda"}
first_lambda.call
puts ''





# Uma lambda também pode receber parâmetros para sua execução:
first_lambda = -> (names){ names.each { |name| puts name} } # parênteses para definir quais parâmetros a lambda vai receber e simbolo de chaves para delimitar onde começa e termina a execução da lambda

# { names.each { |name |puts name} } # dentro da execução da lambda: names.each para iterar o array que estamos recebendo, e para toda vez que passarmos por um elemento da variável vai ser printado na tela o elemento que nesse caso é nome

names = ["joão", "maria", "pedro"]

first_lambda.call(names) # passando como argumento a variével names
# Basicamente executamos um block dentro de uma lambda
puts ''





# Em lambdas que ocupam várias linhas, não declaramos a lambda de forma abreviada e utilizamos o **do...end**:
my_lambda = lambda do |numbers|
  index = 0
  puts 'Número atual + Próximo número'
  numbers.each do |number|
    return if numbers[index] == numbers.last # Verifca se está na ultima posição do array numbers, se não continua a execução... se forma ele o return para execução do programa
    puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
    puts "E a soma deles fica: #{numbers[index] + numbers[index + 1]}"
    index += 1
  end
end

numbers = [1, 2, 3, 4]

my_lambda.call(numbers) # Chamamos a execução da lambda aqui
puts ''





# 2. Diferença: Diferente de blocks, não podemos passar mais de uma lambda como argumentos de um método.
def foo(first_lambda, second_lambda) # Duas lambdas como parâmetro
  # Aqui chamamos as duas
  first_lambda.call 
  second_lambda.call
end

first_lambda = lambda { puts "my first lambda"}
second_lambda = lambda { puts "my second lambda"}

foo(first_lambda, second_lambda)


