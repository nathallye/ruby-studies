# Blocks, Procs e Lambdas (definidas closures na Ciência da Computação) são uns dos aspectos mais poderosos do Ruby, e também os mais incompreendidos.

# Qual a diferença entre eles?

####### BLOCKS
# O jeito mais fácil, comum e comprovado de usar closures no Ruby é dentro de blocks. Eles têm a seguinte sintaxe:
array = [1, 2, 3, 4]

array.collect! do |n| # O collect é a mesma coisa que o map, sendo apenas um alias.
  n ** 2
end

puts array.inspect

# RETORNO => [1, 4, 9, 16]

#### Então, o que está acontecendo aqui?
# Primeiro, nós mandamos o método collect! para um Array com um bloco de código.
# O bloco do código interage com uma variável usada dentro do método collect! (nesse caso n) e o eleva ao quadrado.
# Cada elemento dentro do Array agora está elevado ao quadrado.
# Usar um block com o método collect! é bem fácil, nós apenas temos que pensar que esse collect! vai usar o código dado dentro de cada elemento no Array.




#### No entanto, e se quisermos fazer nosso próprio método collect!? Como ele vai ser? Bem, vamos construir um método chamado iterate! e vamos ver.
class Array
  def iterate!
    self.each_with_index do |n, i|
      self[i] = yield(n)
    end
  end
end

array = [1, 2, 3, 4]

array.iterate! do |n|
  n ** 2
end

puts array.inspect

# RETORNO => [1, 4, 9, 16]

#### Para começar, nós reabrimos a classe do Array e colocamos o método iterate! dentro dela. Nós vamos continuar com as convenções do Ruby e colocar um “bang” no final, dizendo aos nossos usuários para tomar cuidado, pois esse método pode ser perigoso! Então usamos nosso método iterate! da mesma maneira que o Ruby fez no método collect! No entanto, a melhor parte está bem no meio da nossa definição de método iterate!.
# Diferentemente de atributos, você não precisa especificar o nome dos blocks dentro dos seus métodos, você pode usar a palavra-chave ****yield****. 
# Ao chamar essa palavra-chave, ela vai executar o código dentro do block fornecido ao método. Além disso, note como estamos passando o n (o número inteiro com que o método each_with_index está trabalhando no momento) ao yield. 
# Os atributos passados ao yield correspondem às variáveis especificadas na piped list do block. Esse valor agora está disponível para o block, e devolvido pelo chamado yield. Para recapitular o que está acontecendo:

# Mande iterate! para o Array de números.
# Quando o yield é chamado com o número n (primeira vez é 1, segunda vez é 2 etc…), passe o número para o block do código fornecido.
# O block tem o número disponível (também chamado n) e o eleva ao quadrado. Como este é o último valor gerenciado pelo block, ele é devolvido automaticamente.
# O ****yield**** devolve o valor retornado pelo bloco e sobreescreve o valor no Array.
# Isso continua para cada elemento no Array.
# O que nós temos agora é uma maneira flexível de interagir com o nosso método. Entenda os blocks como aqueles que estão dando a seu método uma API, na qual você pode determinar que cada valor do Array seja elevado ao quadrado, ou ao cubo, ou converter cada número em uma string e imprimi-los na tela. As opções são infinitas, deixando seu método bem flexível e, assim, muito poderoso. 









###### PROC
class Array
  def iterate!(&code)
    self.each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end

array = [1, 2, 3, 4]

array.iterate! do |n|
  n ** 2
end

puts array.inspect

# RETORNO => [1, 4, 9, 16]

#### Parece bem similar ao nosso exemplo anterior, no entanto existem duas diferenças. Primeiro, nós estamos passando um argumento ampersand chamado &code. Esse argumento é, convenientemente suficiente, o nosso block. O segundo é o meio da nossa definição de método iterate!, no qual em vez de usar o yield, mandamos um chamado para todos os nossos blocos de códigos. O resultado é exatamente o mesmo. No entanto, se isso é verdade, por que então temos essa diferença em sintaxe? Bom, ela nos ensina um pouco mais sobre o que blocks realmente são. Dê uma olhada:

def what_am_i(&block)
  block.class
end

puts what_am_i {}

# RETORNO => Proc

# Um block é simplesmente um Proc! Dito isso, o que é um Proc?



#### Procedimentos, mais conhecidos como Procs
# Blocks são bastante convenientes e sintaticamente simples, no entanto é melhor termos vários blocks diferentes à nossa disposição e usá-los múltiplas vezes. Assim, passar o mesmo block múltiplas vezes faria com que nós nos repetíssemos. 
# ****Como o Ruby é completamente orientado ao objeto, isso pode ser contornado de uma maneira tranquila, ao salvar o código reutilizável como sendo um objeto. O objeto reutilizável é chamado Proc (abreviação para procedimento)****. 
# A única diferença entre blocks e Procs é que um block é um Proc que não pode ser salvo e, assim, é uma solução única. Ao trabalhar com Procs, podemos começar a fazer o seguinte:
class Array
  def iterate!(code)
    self.each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end

array_1 = [1, 2, 3, 4]
array_2 = [2, 3, 4, 5]

square = Proc.new do |n|
  n ** 2
end

array_1.iterate!(square)
array_2.iterate!(square)

puts array_1.inspect
puts array_2.inspect

# RETORNO => [1, 4, 9, 16]
# RETORNO => [4, 9, 16, 25]

# Eu sempre escrevo o Proc em caixa alta como se fosse uma própria classe dentro do Ruby. No entanto, blocks não têm uma classe (afinal eles são apenas Procs) e são apenas um tipo de sintaxe dentro do Ruby. 




##### Note como nós não precedemos com um & o atributo do código no nosso método iterate!. Isso é porque passar Procs não é diferente de passar qualquer outro tipo de dado. Como os Procs são criados como qualquer outro objeto, podemos começar a nos divertir e a forçar o intérprete do Ruby a fazer algumas coisas interessantes. Tente isto aqui:

class Array
  def iterate!(code)
    self.each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end

array = [1, 2, 3, 4]

array.iterate!(Proc.new do |n| 
  n ** 2
end)

puts array.inspect

# RETORNO => [1, 4, 9, 16]

# Acima temos como a maioria das linguagens lida com closures, e é exatamente o mesmo que enviar um block. No entanto, se você pensou que isso não parece com o “jeito Ruby”, eu vou ter que concordar. A razão acima é exatamente o porquê de o Ruby ter blocos, e isso é para permanecer de acordo com a familiar sintaxe de conclusão “end”.




#### Se esse é o caso, por que não usar somente blocks? Bem, a resposta é simples, e se nós quisermos passar duas ou mais closures para um método? Se esse é o caso, blocks rapidamente se tornam muito limitados. No entanto, ao ter Procs, podemos fazer algo como:
def callbacks(procs)
  procs[:starting].call

  puts "Still going"

  procs[:finishing].call
end

callbacks(:starting => Proc.new { puts "Starting" },
        :finishing => Proc.new { puts "Finishing" })

# RETORNO => Starting
# RETORNO => Still going
# RETORNO => Finishing


# Então quando devemos usar blocks no lugar de Procs? Minha lógica é a seguinte:

# Block: Seu método está quebrando um Acima temos como a maioria das linguagens lida com closures, e é exatamente o mesmo que enviar um block. No entanto, se você pensou que isso não parece com o “jeito Ruby”, eu vou ter que concordar. A razão acima é exatamente o porquê de o Ruby ter blocos, e isso é para permanecer de acordo com a familiar sintaxe de conclusão “end”.

Se esse é o caso, por que não usar somente blocks? Bem, a resposta é simples, e se nós quisermos passar duas ou mais closures para um método? Se esse é o caso, blocks rapidamente se tornam muito limitados. No entanto, ao ter Procs, podemos fazer algo como:

def callbacks(procs)
  procs[:starting].call

  puts "Still going"

  procs[:finishing].call
end

callbacks(:starting => Proc.new { puts "Starting" },
          :finishing => Proc.new { puts "Finishing" })

# => Starting
# => Still going
# => Finishing
Então quando devemos usar blocks no lugar de Procs? Minha lógica é a seguinte:

Block: Seu método está quebrando um objeto em pedaços menores, e você quer permitir que seus usuários interajam com esses pedaços.
Block: Você quer executar expressões múltiplas automaticamente, como uma migração de banco de dados.
Proc: Você quer reutilizar um bloco de código múltiplas vezes.
Proc: Seu método vai ter um ou mais callbacks.
 múltiplas automaticamente, como uma migração de banco de dados.
# Proc: Você quer reutilizar um bloco de código múltiplas vezes.
P# roc: Seu método vai ter um ou mais callbacks.


