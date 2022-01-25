# É declarada com o prefixo @@.

# Pode ser acessada em qualquer lugar da classe onde foi declarada e seu valor é **compartilhado** entre todas as **instâncias de sua classe**.

class User
  @@user_count = 0 # Declarada aqui
  
  def add(name)
    puts "User #{name} adicionado"
    @@user_count += 1 # e pode ser acessada aqui. Em qualquer instâncias dessa classe. E toda alteração ao seu vai ser refletida em todas as intâncias. 
    puts "@@user_count agora é: #{@@user_count}"
  end

  def exemple 
    puts @@user_count
  end
end

first_user = User.new
first_user.add('João')

second_user = User.new
second_user.add('Mario')