# Seu nome começa com o símbolo @.

# Semelhante a variável de classe, tendo como única diferença o valor que **não é compartilhado** entre todas as **instâncias de sua classe**.

# Se fizer alteração do valor em uma instância não vai mudar na outra

class User
  def add(name)
    @name = name
    puts "User adicionado"
    hello
  end

  def hello
    puts "Seja bem vindo, #{@name}!"
  end
end

user = User.new
user.add('João')


