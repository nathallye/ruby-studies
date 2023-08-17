class Sportsperson
  def compete
    puts 'Participando de uma competição.'
  end
end

class SoccerPlayer < Sportsperson
  def run
    puts 'Correndo atrás da bola.'
  end
end

class Marathonist < Sportsperson
  def run
    puts 'Percorrendo o circuito.'
  end
end

=begin
MUDANDO ISSO:
soccerPlayer = SoccerPlayer.new
soccerPlayer.compete
soccerPlayer.run

marathonist = Marathonist.new
marathonist.compete
marathonist.run 
=end

# PARA ISSO:
sportspeople = [SoccerPlayer.new, Marathonist.new]

sportspeople.each do |sportsperson|
  sportsperson.compete 
  sportsperson.run
end
