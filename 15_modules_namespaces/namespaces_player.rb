# Mesmo os dois módulos tendo uma class com o mesmo nome e o mesmo método info, não há confitlo. Por conta dos módulos, eles evitam esses conflitos:

module VideoGame
  class Player 
    def self.info
      puts 'Precisa de um bom condicionamento físico'
    end
  end
end

module Football
  class Player
    def self.info
      puts 'Precisa de coordenação motora'
    end
  end
end

Football::Player.info
VideoGame::Player.info