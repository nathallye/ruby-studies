# Um bloco pode ser passado como  argumento implícito de um método.

def foo
  yield # Chamada do bloco passada como argumento
  yield 
end

foo { puts "Exec the block" }
puts ''





# E se o bloco for opcional?
# O ruby oferece um método chamado **block_given? **para verificar se o bloco foi passado como argumento

def foo
  if block_given? # Verifica SE um bloco foi passado como parâmetro do método
    yield # se for true, chama a execução do bloco
  else # SENÃO...
    puts "Sem parâmetro do tipo bloco" # imprime essa frase
  end
end

foo # Sem bloco como parâmentro
foo { puts "Com parâmetro do tipo bloco"} # com bloco como parâmetro
puts ''






# Outra forma de receber blocos como parâmetro é utilizar o símbolo **&**

def foo(name, &block) # dica importante: sempre deixar o **&nome_do_bloco** como último parâmetro a ser recebido pelo método
  @name = name
  block.call # Para executar um bloco recebido desta forma é necessário apenas utilizar o nome do bloco acompanhado pelo método **.call**
end

foo('Leonardo') { puts "Hello #{@name}" }
puts ''






# Também podemos passar um bloco que ocupa várias linhas como parâmetro

def foo(numbers, &block)
  if block_given? # Verifica se um bloco foi passado como parâmetro do método
    numbers.each do |key, value| # Intera cada number que tivermos dentro do hash numbers
      block.call(key, value) # depois disso, chamos o bloco passando o key e o value como argumento para a execução dele
    end
  end
end

numbers = { 2 => 2, 3 => 3, 4 => 4 } # variável numbers do tipo hash 

foo(numbers) do |key, value| # Chamamos a execução desse método, passando numbers como parametros e do para passar os parâmetros do bloco
  puts "#{key} * #{value} = #{key * value}"
  puts "#{key} + #{value} = #{key + value}"
  puts "---"
end