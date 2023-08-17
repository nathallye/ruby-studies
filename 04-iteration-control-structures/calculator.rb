result = ''

loop do
  puts result

  if result != '' 
    puts
  end

  puts 'Calculadora de terminal.'
  puts 'Selecione a operação desejada:'
  puts '1 - Soma'
  puts '2 - Subtração'
  puts '3 - Multiplicação'
  puts '4 - Divisão'
  puts '5 - Potenciação'
  puts '0 - Sair'
  print 'Opção: '

  option = gets.chomp.to_i

  case option
  when 1..5
    puts ''
    print 'Insira o primeiro valor: '
    number1 = gets.chomp.to_i

    print 'Insira o segundo valor: '
    number2 = gets.chomp.to_i

    case option # case dentro de outro
    when 1
      sum = number1 + number2
      result = "#{number1} + #{number2} = #{sum}"
    when 2
      subtraction = number1 - number2
      result = "#{number1} - #{number2} = #{subtraction}"
    when 3
      multiplication = number1 * number2
      result = "#{number1} * #{number2} = #{multiplication}"
    when 4
      division = number1 / number2
      result = "#{number1} / #{number2} = #{division}"
    when 5
      potentiation = number1 ** number2
      result = "#{number1}^#{number2} = #{potentiation}"
    end

  when 0
    break
  else
    puts 'Opção inválida!'
  end
  
  system "clear"
end