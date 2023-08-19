my_lambda = lambda do |numbers|
    index = 0
    puts 'Número atual + Próximo número.'
    numbers.each do |number|
      return if numbers[index] == numbers.last # Verifca se está na ultima posição do array numbers, se não continua a execução...
      puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
      puts "E a soma deles fica: #{numbers[index] + numbers[index + 1]}"
      index += 1
    end
  end
  
  numbers = [1, 2, 3, 4]
  
  my_lambda.call(numbers)
  