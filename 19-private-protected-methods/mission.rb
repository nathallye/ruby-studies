class Car
  def get_km(phrase)
    km = find_km(phrase) # find_km é o método private que vai receber a frase e vai procurar o casamento de padrão
    puts km # imprime o casamento da expressão regular
  end
  
  private

  def find_km(phrase)
    /\d{2,}km\/h/.match(phrase) # retorno do método private find_km
  end
end

phrase = 'Um fusca de cor amarela viaja a 80km/h'

car = Car.new
car.get_km(phrase)