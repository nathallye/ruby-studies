class Computer 
  def turn_on
    puts 'Ligando o computador...'
  end
  
  def shutdown
    puts 'Desligando o computador...'
  end
end

computer = Computer.new
computer.shutdown