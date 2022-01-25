result = '' # Variévl igual uma String Vazia

loop do  # Laço de repeticião
  puts result 
  puts " "
  puts 'Selecione uma das seguintes opções abaixo:'
  puts '1 - Descobrir a idade de uma pessoa'
  puts '0 - Sair'
  print 'Opção: '
  
  option = gets.chomp.to_i
  
  # estrutura de controle condicional p/ verificar a opção escolida
  if option == 1 # SE a opção que o usuário escolher for igaula 1 (Descobrir a idade de uma pessoa)
    print 'Digite o ano de nascimento: '
    year_of_birth = gets.chomp.to_i # o usuário vai entrar com o ano que nasceu

    print 'Digite o ano atual: '
    current_year = gets.chomp.to_i # o usuário vai entrar com o ano atual

    age = current_year - year_of_birth
    
    result = "Quem nasceu no ano de #{year_of_birth}, tem #{age} anos em #{current_year}."
  elsif option == 0 # SENÃO SE a opção for 0(Sair), vai parar a execução do loop
    break
  else # SENÃO for nenhuma das opções citadas
    result = 'Opção inválida!'
  end

  # Comando que limpa o console
  system "clear"
end