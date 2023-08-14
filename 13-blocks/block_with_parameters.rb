# Utilizamos barras verticais para passar parâmetros para um bloco

sum = 0 # soma recebe 0
numbers = [5, 10, 5] # array de números
numbers.each { |number| sum += number } # cada vez que for executado ele vai pegar a soma é igual a soma mais o número (sum = sum + number)
puts sum