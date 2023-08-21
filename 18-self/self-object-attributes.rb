class Pen
    attr_accessor :color

    def pen_color
      puts "The color is " + self.color + "." # self.color, estamos acessando o atributo color da classe Pen (atributo referente ao objeto que está)
    end
  end
  
  pen = Pen.new 
  pen.color = "blue"
  pen.pen_color 
  # => The color is blue.

  
  pen2 = Pen.new 
  pen2.color = "pink"
  pen2.pen_color
  # => The color is pink.