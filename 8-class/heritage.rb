class Animal 
  def pular
    puts 'Toing! tóim! bóim! póim!'
  end
  
  def dormir
    puts 'ZzZzzz!'
  end
end
  
class Cachorro < Animal # class Cachorro herda da class Animal
  def latir
    puts 'Au Au'
  end
end
  
cachorro = Cachorro.new
cachorro.pular # método herdado da class Animal
cachorro.dormir # método herdado da class Animal
cachorro.latir

# OBS.: Herança é um dos pilares da POO.