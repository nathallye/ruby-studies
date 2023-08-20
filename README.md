# Estudos de Ruby e Ruby on Rails

## Instalação

### Preparando o ambiente - Ubuntu

Os passos a seguir são para a instalação no Ubuntu 18.10.
Caso possua outra versão, ou então, outro sistema operacional você pode seguir os passos da sessão de instalação do ruby no link <https://gorails.com/setup/ubuntu/18.10>.

1. Abra seu terminal (ctrl + t) e instale as seguintes dependências:

```
> sudo apt install curl
> curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
> curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
> echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

> sudo apt-get update
> sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
```

2. Instalando o Rbenv:

```
> cd
> git clone https://github.com/rbenv/rbenv.git ~/.rbenv
> echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
> echo 'eval "$(rbenv init -)"' >> ~/.bashrc
> exec $SHELL

> git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
> echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
> exec $SHELL
> ruby -v
```


3. Utilize o Rbenv para instalar o Ruby na versão desejada, como por exemplo a versão 3:

```
> rbenv install 3.0.0
> rbenv global 3.0.0
```

4. Certifique-se de que o Ruby foi instalado corretamente:

```
> ruby -v
```

## Primeiro Programa

1. Para fazer o primeiro programa ruby vamos criar um arquivo com o nome de `hello.rb`. Obs: Os arquivos de código ruby possuem a extensão **.rb**;

2. Vamos abrir o arquivo e adicionar a seguinte linha:

``` RB
puts 'Hello, World!'
```

3. Para executarmos o programa criado vamos acessar o seu terminal e navegar até o local do arquivo. Em seguida rodar o comando seguinte:

``` RB
> ruby hello.rb 

=> Hello World!
```

> A instrução `puts` vai imprimir a mensagem ‘Hello, World!’ toda vez que nosso programa for executado.
 
## IRB

Uma ótima opção para testarmos códigos pequenos é a ferramenta Irb (Interactive Ruby).

Através de linha de comando ela nos permite interagir com códigos ruby sem a necessidade de criar arquivos, interpretando códigos e retornando resultados de forma imediata.

Não precisa de instalação, então caso você tenha o ruby instalado também tem o IRB!

### Primeiros passos

Vamos imprimir um **Hello, world!** por linha de comando.

1. No Terminal ou SSH Console, vamos rodar o comando seguinte:

```
> irb
```

2. Vamos digitar o código a seguir e após o enter veremos a mensagem sendo exibida:

``` RB
> puts 'Hello, World!

=> Hello World!
```

## Tipos de dados

Os tipos de dados existem para classificar dados, possibilitando a definição de regras para cada tipo. Com eles o Ruby sabe como lidar com os dados de nossos programas.

Os principais tipos de dados são:

### Integer

Como na matemática, **inteiro** é o tipo de dado que representa o conjunto de números positivos, negativos e 0.

1. Vamos criar um objeto do tipo **Integer** atribuindo à uma variável o seguinte valor inteiro:

> (variável é um local onde armazenamos dados que serão reutilizados).
 
``` RB
> integer_number = -20
```

2. Vamos confirmar que a variável realmente é do tipo **Integer**, executando:

```  RB
> integer_number.class

=> Integer
```

### Float

Tipo que representa os números reais inexatos.  De forma abreviada, são números decimais, números que contêm ponto flutuante.

1. Vamos criar um objeto tenha o tipo **Float** atribuindo a ele um valor decimal:

> (praticamente tudo no ruby é um objeto).

``` RB
> float_number = -20.05
```

2. Vamos provar que o objeto realmente é do tipo **Float**, executando:

``` RB
> float_number.class

=> Float
```
### Boolean

Tipo de dado usado para informar a veracidade de algo. Possui apenas dois states, sendo eles **true** que é uma instância da classe `TrueClass` e **false** que é uma instância da classe `FalseClass`.
 
### String

Tipo que representa um texto. Um conjunto de letras, símbolos ou números. Pode ser definido de várias formas, porém, as mais comuns são dentro de aspas simples ou duplas.

### Array

Um tipo que nos permite armazenar uma lista ordenada de dados em um único objeto. Para definir um array você deve utilizar colchetes.

1. Vamos criar um objeto do tipo **Array**:

``` RB
> first_array = [0, 1, 2]
```

2. Em seguida, acessar a terceira posição do nosso array:

``` RB
> first_array[2]

=> 2
```

### Symbol

É um tipo de dado semelhante a **String**, com a diferença de que ele é um objeto imutável. Duas strings idênticas podem ser objetos diferentes, mas um símbolo é apenas um objeto, ocupando sempre o mesmo espaço na memória.

Um símbolo sempre é definido começando com dois pontos `:` seguido por seu nome.

1. Vamos iniciar um objeto do tipo **Symbol** atribuindo à uma variável o seguinte valor:

``` RB
> first_symbol = :ruby_symbol
```

2. Vamos descobrir qual posição da memória esse símbolo está salvo, rodando:

``` RB
> first_symbol.object_id

=> 2224028
```

3. Agora vamos criar outra variável com o mesmo símbolo e veremos que ela aponta para o mesmo endereço na memória:

``` RB
> second_symbol = :ruby_symbol
> second_symbol.object_id
=> 2224028

> first_symbol.object_id
=> 2224028
```

4. Para confirmar que o objeto é do tipo **Symbol**:

``` RB
> first_symbol.class

=> Symbol
```

### Hash

Tipo que representa uma coleção de dados organizados por chaves únicas e seus respectivos valores. Enquanto arrays são definidos com colchetes, hashes são definidos com chaves ‘{ }’.

1. Vamos criar um objeto do tipo **Hash** adicionando a uma variável o seguinte valor:

``` RB
> first_hash = {course: 'ruby', language: 'pt-Br' }
```

2. Agora, vamos encontrar o tipo do curso rodando:

``` RB
> first_hash[:course]

=> "ruby"
```

### Tipagem Dinâmica

No ruby não é preciso definir o tipo de dado antes de atribuir um valor à uma variável. O tipo é dinâmico, ou seja, ele é definido de acordo com o dado atribuído.

Um exemplo é que podemos alterar o valor de uma variável diversas vezes e em cada uma delas notar que o tipo de dado também mudou:

``` RB
> dynamic = 2
> dynamic.class
=> Integer

> dynamic = "String type"
> dynamic.class
=> String

> dynamic = :onebit_symbol
> dynamic.class
=> Symbol
```

## Operadores Matemáticos

Para resolver operações matemáticas no ruby contamos com a seguinte lista de operadores aritméticos:

- `+` (Adição)
- `–` (Subtração)
- `*` (Multiplicação)
- `/` (Divisão)
- `%` (Módulo)
- `**` (Expoente)


## Entrada/Saída de dados

Essas duas operações manipulam dados, com a diferença que a **entrada** ocorre quando o programa lê dados que podem ter sido recebidos de um teclado, de um arquivo, ou então de outro programa e a **saída** é um dado produzido pelo programa que pode ser exibido em uma tela, enviado para um arquivo ou então para outro programa.

1. Para fazer um programa com entrada e saída de dados, vamos criar um arquivo chamado `input-output.rb` e adicionar o seguinte código:

``` RB
# saída de dado
print 'Digite seu nome: ' 

# Recebendo uma entrada do teclado
name = gets.chomp 

# saída utilizando puts
# use códigos ruby dentro de uma string com #{code}
puts "Hello #{name}!"
```

> Perceba que primeiro é exibido uma mensagem pedindo que a pessoa informe seu nome. Depois é criado uma variável chamada `name` que é igual a `gets.chomp`.
>
> `gets` é um método que recebe como entrada um dado inserido pelo teclado. Como ele captura qualquer coisa precisamos do `.chomp` para que quando o enter for pressionado ele não crie uma quebra de linha.
>
> Por fim realizamos uma nova saída de dado imprimindo uma saudação para a pessoa que informou seu nome.

2. Vejamos isso na prática, rodando:

```
> ruby entrada_saida.rb
=> Digite seu nome: Nath
=> Hello Nath!
```

> O gets recebe os dados como String, mas podemos transformá-los em números inteiros e realizar operações matemáticas com eles como no exemplo a seguir.

4. Vamos criar um arquivo chamado `operations.rb` e adicionar o seguinte código:

``` RB
puts 'Soma entre dois números'

print 'Digite o primeiro número inteiro: '
# .to_i transforma a string em um número inteiro
number1 = gets.chomp.to_i 

print 'Digite o segundo número inteiro: ' 
number2 = gets.chomp.to_i 

addition = number1 + number2
puts "O resultado da adição entre os dois números é #{addition}"
```

5. Executando o programa:

```
> ruby operations.rb
```

Depois de inserir dois valores inteiros, a saída é o resultado da adição entre os dois números.

## Estruturas de Controle

Tratam-se de códigos que escrevemos em nossos programas para analisar dados e decidir qual caminho seguir. Divide-se em dois tipos, `Condicional` e `Iteração`.

### Condicional

Tipo de estrutura de controle que executa um trecho de código dependendo do resultado de uma condição.

- If/Else/Elsif
- Unless
- Case

#### If

Expressão que verifica se uma condição é verdadeira(true), e a partir deste resultado determina se as instruções dentro de seu corpo serão ou não executadas.

1. Para entender como utiliza-lo vamos criar um arquivo chamado `if.rb` e adicionar o seguinte código:

``` RB
day = 'Sunday' 
lunch = 'normal'

if day == 'Sunday' 
  lunch = 'special'
end

puts "Lunch is #{lunch} today"
```

> Lemos a condição da seguinte forma:
> Se o dia é Domingo, então o almoço é especial

2. Executando o programa (`ruby if.rb`) veremos que a condição é verdadeira.

#### Else

Informa o que fazer quando a verificação de uma condição `if` for falsa.

1. Para utilizar o `else`, vamos criar um arquivo chamado `else.rb` e adicionar o seguinte código:

``` RB
day = 'Saturday' 

if day == 'Sunday' 
  lunch = 'special'
else
  lunch = 'normal'
end

puts "Lunch is #{lunch} today"
```

> Lemos a condição da seguinte forma:
> Se o dia é Domingo, então o almoço é especial
> Senão, o almoço é normal.

2. Execute o programa e veja que essa condição é falsa. O bloco de código dentro do Else então é executado.

#### Elsif

Utilizado quando há a necessidade de verificar mais de uma condição em um `if`.

1. Para utilizar o `elsif`, vamos criar um arquivo chamado `elsif.rb` e adicionar o seguinte código:

``` RB
day = 'Holiday' 

if day == 'Sunday' 
  lunch = 'special'
elsif day == 'Holiday'
  lunch = 'later'
else
  lunch = 'normal'
end

puts "Lunch is #{lunch} today"
```

> Lemos a condição da seguinte forma:
> Se o dia é Domingo, então o almoço é especial.
> Senão e se o dia é feriado, então o almoço é tarde.
> Senão, o almoço é normal. 

2. Executando o programa veremos que a segunda condição é a verdadeira.

#### Unless

Enquanto o **if** é executado quando sua condição é verdadeira, o `unless` ocorre de forma contrária. É executado apenas quando a condição é falsa.

1. Vamos criar um arquivo chamado `unless.rb` e adicionar o seguinte código:

``` RB
product_status = 'closed'

unless product_status == 'open'
  check_change = 'can'
else
  check_change = 'can not'
end

puts "You #{check_change} change the product"
```

> Lemos da seguinte forma:
> A menos que o estado do produto seja aberto, a troca é possível.
> Senão, a troca não é possível.

2. Rodando o programa podemos notar que a primeira condição é a verdadeira.

#### Case

Instrução muito parecida com o **if**. Ele se enquadra muito bem a situações com diversas condições.

1. Em um novo arquivo chamado `case.rb` vamos adicionar o código:

``` RB
puts 'Digite o número do mês em que você nasceu?'

month = gets.chomp.to_i

case month 
when 1..3
  puts 'Você nasceu no começo do ano'
when 9..12
  puts 'Você nasceu no final do ano'
when 4..6
  puts 'Você nasceu na primeira metade do ano'
when 7..9
  puts 'Você nasceu na segunda metade do ano!'
else 
  puts 'Não foi possível identificar'
end
```

> Lemos a condição da seguinte forma:
> Caso o mês informado
> esteja no intervalo entre 1 e 3, você nasceu no começo do ano
> esteja no intervalo entre 9 e 12, você nasceu no final do ano
> esteja no intervalo entre 4 e 6, você nasceu na primeira metade do ano
> esteja no intervalo entre 7 e 9, você nasceu na segunda metade do ano
> Senão, não foi possível identificar o mês

### Iteração

Tipo de estrutura de controle que gerencia quantas vezes um trecho de código será executado.

- For
- While
- Times
- Do/While (Loop)

#### For

Usado para percorrer uma coleção de elementos.

1. Vamos criar um programa chamado `for.rb` com o seguinte código

``` RB
fruits = ['Maçã', 'Uva', 'Morango']

for fruit in fruits 
  puts fruit
end
```

> No exemplo, a instrução `for` percorrerá todos os elementos da lista `fruits`. Em cada iteração, podemos acessar o elemento atual através da variável `fruit`.

2. Executando o programa veremos o nome da fruta cada vez que a repetição é executada.

3. Agora, substituindo o código de `for.rb` por:

``` RB
fruits = ['Maçã', 'Uva', 'Morango']

fruit = "Laranja"

for fruit in fruits 
  puts fruit
end

puts fruit
```

**CUIDADO**
**Ao executar o programa, note que a variável de iteração pode sobrescrever outra que esteja fora da estrutura de repetição.**

#### While

Instrução que repete um bloco de código enquanto sua condição é verdadeira.

1. Vamos criar um programa chamado `while.rb` com o seguinte código:

``` RB
x = 1 

while x < 10
  puts x
  # Adiciona + 1 ao valor de x
  x += 1
end
```

> Quando este programa é executado, a instrução `while` é repetida enquanto o valor de `x for menor que 10`.

#### Times

Executa uma repetição por um especificado número de vezes.

1. Em um novo programa chamado `times.rb` vamos adicionar o seguinte código:

``` RB
2.times do
  puts 'Estou aprendendo times!'
end

names = ['João', 'Alfredo', 'Juca']
# Igual ao array, o times começa com índice 0 
3.times do |index|
  puts names[index]
end
```

> Executando o programa percebemos que a estrutura times:
> Exibe a frase “Estou aprendendo times” 2 vezes
> Exibe um índice do array `name` por 3 vezes

#### Do/While(loop)

Na verdade, no Ruby utilizamos uma estrutura de repetição chamada **loop** que faz o mesmo que o `do/while` em outras linguagens de programação. Ele cria um laço de repetição que só é parado quando uma instrução break for verdadeira.

1. Em um arquivo chamado **loop.rb** adicione o seguinte código.

``` RB
count = 1
loop do 
  puts count
  break if count == 10
  # Incrementa a variável count
  count += 1
end
```

> Foi criado uma estrutura de repetição que só será parada quando o valor da variável `count` for igual a 10.
> Execute o programa e veja que ele contará de 1 a 10.

## Collections

Na programação, **collection** representa um **conjunto de dados semelhantes** em uma única unidade.

**Ex**: Uma pessoa tem uma grande quantidade de livros sobre programação e a fim de guardá-los de forma organizada os colocou dentro de uma caixa com o rótulo “Livros de Programação”.
Note que a caixa é uma representação dos livros com conteúdo de Programação. Uma collection é exatamente isso, um local onde concentramos uma quantidade de itens semelhantes.

Agora, sempre que essa pessoa precisar rever um livro de programação, ela saberá onde encontrá-lo!

Dois tipos de collections bastante utilizados na linguagem Ruby são `Array` e `Hash`.

### Array

Existem várias maneiras de manipular arrays. Abaixo encontram-se algumas muito úteis para todo programador.

#### Criando um Array

1- Crie um array vazio:

``` RB
> states = []
```

> Collections podem ter zero ou mais elementos.

#### Adicionando itens

1- Insirindo um novo item ao array `states`:

``` RB
> states.push('Espírito Santo')
```

> O `push` sempre irá adicionar itens de forma sequencial.

2- Também é possível inserir vários elementos de uma só vez:

``` RB
> states.push('Minas Gerais', 'Rio de Janeiro', 'São Paulo')
```

3- Vejamos o array `states` com a instrução

``` RB
> puts states

=> 
Espírito Santo
Minas Gerais
Rio de Janeiro
São Paulo
```

4- Para manter nossa coleção organizada em ordem alfabética ao inserir os itens ‘Acre’ e ‘Amapá’, devemos especificar que eles ocuparão as primeiras posições do array. Para isso contamos com o `insert`:

``` RB
> states.insert(0, 'Acre', 'Amapá')

=> ["Acre", "Amapá", "Espírito Santo", "Minas Gerais", "Rio de Janeiro", "São Paulo"]
```

#### Acessando elementos

O item de um array pode ser acessado pelo valor de seu index.

1- Recuperando o segundo elemento do array `states`:

``` RB
> states[1]

=> "Amapá"
```

2- Também podemos acessar índices através de intervalos:

``` RB
> states[2..5]

=> ["Espírito Santo", "Minas Gerais", "Rio de Janeiro", "São Paulo"]
```

> Retorna os itens dos índices 2, 3, 4 e 5.
>
> Utilizando números negativos conseguimos recuperar elementos a partir do ultimo item do array, de forma regressiva. O número -1 representa o ultimo elemento.

3- Adquirindo o penultimo elemento de `states`:

``` RB
> states[-2]

=> "Rio de Janeiro"
```

4- Também funciona com intervalos:

``` RB
> states[-3..-1]

=> ["Minas Gerais", "Rio de Janeiro", "São Paulo"]
```

5- Uma forma muito intuitiva e natural de recuperar o primeiro item é usar `first`:

``` RB
> states.first

=> "Acre"
```

#### Obtendo informações

1- Para saber a quantidade de itens em um Array podemos utilizar qualquer uma destas duas instruções:

``` RB
> states.count
=> 6

> states.length
=> 6
```

2- Descubrindo se o array está vazio:

``` RB
> states.empty?

=> false
```

3- Verificando se um item específico está presente:

``` RB
> states.include?('São Paulo')

=> true
```

> Igual ao `empty`, o `include` também resulta um valor verdadeiro ou falso.

#### Excluindo elementos

1- Removendo um item através de seu índice:

``` RB
> states.delete_at(2)

=> "Espírito Santo"
```

2- Excluindo o último item do array:

``` RB
> states.pop

=> "São Paulo"
```

3- Excluindo o primeiro item do array:

``` RB
> states.shift

=> "Acre"
```

### Hash

#### Novo Hash

1- Criando um hash vazio:

``` RB
> capitals = Hash.new
```

2- Um hash também pode ser iniciado com vários pares de chave-valor:

``` RB
> capitals = { acre: 'Rio Branco', sao_paulo: 'São Paulo'}

=> {:acre=>"Rio Branco", :sao_paulo=>"São Paulo"}
```

3- A chave de um hash pode ser qualquer tipo de dado:

``` RB
> hash = {1 => 'Chave do tipo inteiro', true => 'Chave do tipo booleano', [1,2,3] => 'Chave do tipo array'}

=> {1=>"Chave do tipo inteiro", true=>"Chave do tipo booleano", [1, 2, 3]=>"Chave do tipo array"}
```

#### Adicionando itens

1- Adicionando um novo item ao hash:

``` RB
> capitals[:minas_gerais] = "Belo Horizonte"
```

2- Acessando a capital que acabamos de inserir utilizando sua chave:

``` RB
> capitals[:minas_gerais]

=> "Belo Horizonte"
```

> De forma sucinta, a chave é o index de nossos itens.

3- Para retornar todas as chaves de um hash:

``` RB
> capitals.keys

=> [:acre, :sao_paulo, :minas_gerais]
```

4- Agora, todos os valores de um hash:

``` RB
> capitals.values

=> ["Rio Branco", "São Paulo", "Belo Horizonte"]
```

#### Exclusão

1- Removendo um elemento chave-valor:

``` RB
> capitals.delete(:acre)

=> "Rio Branco"
```

2- Verificando se o hash está vazio:

``` RB
> capitals.empty?

=> false
```

## Iterações

Agora veremos três novas estruturas de repetição utilizadas para trabalhar com `collections`.

### Each

Percorre uma coleção de forma parecida ao `for`, porém, não sobrescrevendo o valor de variáveis fora da estrutura de repetição.

#### Array

1- Vamos adicionar o seguinte código a um programa chamado `each_array.rb`:

``` RB
names = ['Joãozinho', 'Manoel', 'Juca']

name = 'Leonardo Rocha'

names.each do |name|
  puts name
end

puts name
```

> Ao executar o programa percebemos que não foi alterado o valor da  variável `name`, definida antes da estrutura de repetição.

#### Hash

1- Vamos criar um arquivo chamado `each_hash.rb` com o seguinte código:

``` RB
positions = {1 => 'Primeiro', 2 => 'Segundo', 3 => 'Terceiro'}

positions.each do |key, value|
  puts "key: #{key} value: #{value}"
end
```

> Em cada vez que a estrutura percorre o hash, o elemento atual é representado por key e value.

### Map

Cria um array baseando-se em valores de outro array existente.

1- Vamos criar um arquivo chamado `map.rb` com o seguinte código:

``` RB
array = [1, 2, 3, 4]

puts "\nExecutando .map multiplicando cada item por 2"

# .map não altera o conteúdo do array original
new_array = array.map do |element| 
  element * 2
end

puts "\nArray Original"
puts " #{array}"

puts "\nNovo Array"
puts " #{new_array}"
```

2- Agora, vamos criar um arquivo chamado `map!.rb` com o seguinte código:

``` RB
array = [1, 2, 3, 4]

puts "\nExecutando .map! multiplicando cada item por 2"
puts "\nArray Original"
puts " #{array}"

# .map! a "!" força que o conteúdo do array original seja alterado
array.map! do |element| 
  element * 2
end

puts "\nArray Sobrescrito"
puts " #{array}"
```

> Como vimos neste exemplo, podemos forçar que o array original seja alterado utilizando `map!`.

### Select

Realiza uma seleção de elementos presentes em uma collection através de uma condição pré definida. Traz como resultado somente os valores que passam nesta condição.

#### Array

1- Vamos criar um arquivo chamado `select_array.rb` com o seguinte código:

``` RB
array = [1, 2, 3, 4, 5, 6]

selection = array.select do |element|
  element >= 4
end

puts selection
```

> A condição para que um item do array seja selecionado é que seu valor seja maior ou igual a 4.

#### Hash

1- Vamos criar um arquivo chamado `select_hash.rb` com o seguinte código:

``` RB
hash = {0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'tres'}

puts 'Selecionando keys com valor maior que 0'
selection_key = hash.select do |key, value|
  key > 0
end

puts selection_key
```

> Vejamos que dentro de um `hash` podemos fazer uma seleção por chave ou valor.

## Métodos

Método é uma forma de organizar funções específicas de um programa.  Caso necessário permite a reutilização de código, ou seja, evita escrever o mesmo código diversas vezes.

### Como criar?

1- Iremos criar um método em um arquivo chamado `method.rb`:

``` RB
def talk
 puts 'Olá, como você está?'
end

talk
```

> Para definir um método utiliza-se a palavra reservada `def` seguida pelo nome do método. Depois é escrito um conjunto de expressões, e por fim, a palavra `end` determina o término do método.
>
> Para executar um método basta apenas escrever o seu nome.  

### Parâmetros

1- Vamos substituir o código de `method.rb` por:

``` RB
def talk(last_name, first_name)
  puts "Hello #{last_name} #{first_name}!"
end

first_name = 'Nathallye'
last_name = 'Bacelar'

talk(first_name, last_name)
```

> Um método pode depender de um ou mais parâmetros para realizar determinada tarefa.
>
> O exemplo define um método que precisa do primeiro e segundo nome para exibir uma frase. Tendo ciência disso, deve-se passar dois argumentos toda a vez que o método `talk` for chamado.

2- Agora, vamos criar um arquivo chamado `transito.rb` com o código:

``` RB
def signal(color = 'vermelho')
 puts "O sinal está #{color}."
end

signal()

color = 'verde'
signal(color)
```

> Definindo um valor padrão ao parâmetro, ele torna-se opcional.
>
> Um método pode ser invocado mais de uma vez, em diferentes áreas do programa. Assim seu código está sendo reutilizado.
>
> Quer mudar o código? Altere apenas o método!

### Retorno

1- Vamos criar um arquivo chamado `return.rb`:

``` RB
def compare(a, b) 
  puts 'Comparando se o primeiro valor é maior que o segundo...'
  a > b
end

first_value = 5
second_value = 3

result = compare(first_value, second_value)

puts "O resultado da comparação é: #{result}."
```

> O retorno de um método ruby é sempre o resultado de sua última instrução.

## Gems

Gem é um pacote que oferece funcionalidades a fim de resolver uma necessidade específica de um programa Ruby. Pense como o conceito de **biblioteca** em outras linguagens de programação.

### Como instalar uma gem

1- Para instalar uma `gem` vamos executar no terminal:

```
gem install gem_name
```

Ex.: 

```
gem install os
```

> A gem `os` é uma biblioteca para extrair informações sobre o PC que estamos usando (exp: Sistema operacional, quantidade de cores e etc).

### Utilizando uma gem

1- Vamos criar um arquivo chamado `os.rb` e adicionar o código seguinte:

``` RB
require 'os'

def my_os  
  if OS.windows?
    'Windows'
  elsif OS.linux?
    'Linux'
  elsif OS.mac?
    'Osx'
  else
    'Não consegui Identificar'
  end
end

puts "Meu PC possui #{OS.cpu_count} cores, é #{OS.bits} bits e o sistema operacional é #{my_os}."
```

> No começo do arquivo, o `require ‘gem_name’` carrega os arquivos da gem. Isso possibilita a declaração de códigos com funcionalidades da biblioteca.
>
> obs: Para saber como utilizar uma gem consulte sua documentação.

### Desistalando uma gem

1- Para desinstalar uma gem utilizaremos o comando:

```
gem uninstall gem_name
```

Ex:

```
gem uninstall os
```

### Informação

1- Listando todas as gems instaladas na máquina rodando

```
gem list
```

### Bundler

Para ter controle sobre as dependências de um projeto contamos com uma ferramenta que procura e instala gems chamada Bundler.

1- Para verificar seu uso vamos criar um projeto chamado `first_project`

```
mkdir first_project
cd first_project
```

2- O bundler também é uma gem. Para instalá-lo vamos rodar:

```
gem install bundler
```

3- Feito isso, vamos salvar a lista de gems do projeto em um arquivo chamado `Gemfile`:

```
source 'https://rubygems.org'

gem 'os'
```

> Na primeira linha é definido onde o bundle deve procurar pelas gems.
> Depois é listado as dependências do projeto.
 
4- Vamos instalar estas gems com o comando:

```
bundle install
```

> Assim, qualquer pessoa envolvida no projeto pode facilmente instalar suas dependências.

## POO

POO (Programação Orientada a Objetos) é um  Paradigma de programação criado para lidar com softwares grandes e complexos. É um conceito seguido não só pelo Ruby, mas também por várias outras linguagens de programação como Java, Python, C++, etc.

Sua estrutura é definida por 04 pilares: `Abstração`, `Encapsulamento`, `Herança` e `Poliformismo`.

- **Abstração**

Ação de abstrair uma entidade do mundo real e transformá-la em uma classe.

- **Encapsulamento**

Ato de dividir um programa em diversas partes tornando-o flexível, fácil de modificar e incluir novas funcionalidades.

- **Herança**

Habilidade de criar uma Classe com características de outra existente. A herança prove o reuso e reaproveitamento de código.

- **Poliformismo**

Capacidade de utilizar um método de diferentes formas para diferentes Objeto.

### Objeto

Por definição, objeto é toda coisa material que pode ser percebida pelos sentidos, como por exemplo um carro, livro, cachorro, caneta, avião e etc.

Na programação um objeto é a representação de um objeto do mundo real.

Todos estes objetos apresentam duas característica em comum: informações e comportamentos.

Ex: Cachorro

**Informações**

- **Raça**: Pastor Alemão
- **Peso**: 35 Quilos
- **Idade**: 3 Anos

**Comportamentos**

- **Late**
- **Come**
- **Corre** 

> Em POO chamamos as informações de `attributes` e os comportamentos de `methods`.

### Classe

Tendo como exemplo o objeto carro, pense em uma classe como a planta deste carro. Com ela é possível construir vários carros.

Uma classe é como a planta de um objeto.

### Classes no Ruby

Uma classe é definida pela palavra `class` seguida de seu **Nome** e finalizada pela palavra `end`.

O nome de uma classe deve sempre começar com letra maiúscula. Para nomes compostos utilize o padrão `CamelCase`.

1- Vamos criar um arquivo chamado `computer.rb` com o seguinte código:

``` RB
class Computer
 def turn_on
   puts 'Ligando o computador...'
 end
 
 def shutdown
   puts 'Desligando o computador...'
 end
end
```

> Criamos a classe do objeto `Computer` com os métodos `turn_on` e `shutdown`.

2- Vamos inicializar um novo objeto `Computer` e depois executar seu comportamento `shutdown` adicionando o seguinte código ao final do arquivo **computer.rb**.

``` RB
computer = Computer.new
computer.shutdown
```

> Neste programa você utilizamos dois pilares da programação orientada a objetos:
>
> **Abstração** -> representando o objeto Computer em uma classe.
>
> **Encapsulamento** -> dividindo o projeto em pequenas partes.

3- Executeando o programa:

```
ruby computer.rb
```

4- Vamos fazer outro teste trocando a instrução `computer.shutdown` por `computer.turn_on`.

### Herança

Para herdar características de outra classe, adicione na frente do nome de uma classe filha o símbolo de menor e depois o nome da classe pai.

Ex:

``` RB
class ClasseFilha < ClassePai
end
```

1- Vamos criar um programa chamado `animal.rb` com o seguinte código:

``` RB
class Animal 
  def jump
    puts 'Toing! tóim! bóim! póim!'
  end
  
  def rest
    puts 'ZzZzzz!'
  end
end
  
class Dog < Animal 
  def bark
    puts 'Au Au'
  end
end
  
dog = Dog.new
dog.jump 
dog.rest
dog.bark
```

### Poliformismo

1- Vamos criar um arquivo chamado `polymorphic.rb` com o seguinte código:

``` RB
class Instrument
  def write
    print 'Escrevendo '
  end
end
 
class Pencil < Instrument
  def write
    puts 'Escrevendo à Lápis' # Sobrescrevendo o método write da classe pai
  end
end
 
class Pen < Instrument
  def write
    puts 'Escrevendo com Caneta'
  end
end

class Typewriter < Instrument
  def write
    super # pega tudo que está dentro do método write da class pai
    puts 'com a Máquina' # adicionando mais uma instrução
  end
end

class Keyboard < Instrument 
end

pencil = Pencil.new
pencil.write

pen = Pen.new
pen.write

typewriter = Typewriter.new
typewriter.write

keyboard = Keyboard.new
keyboard.write
```

> O comportamento do método `write` depende do Objeto que o invoca.
 
- Podemos simplificar as chamadas assim:

``` RB
class Instrument
  def write
    print 'Escrevendo '
  end
end
 
class Pencil < Instrument
  def write
    puts 'Escrevendo à Lápis'
  end
end
 
class Pen < Instrument
  def write
    puts 'Escrevendo com Caneta'
  end
end

class Typewriter < Instrument
  def write
    super 
    puts 'com a Máquina'
  end
end

class Keyboard < Instrument 
end
 
Instruments = [Pencil.new, Pen.new, Typewriter.new, Keyboard.new]
# Chamamos o método escrever pra qualquer instrumento
Instruments.each do |instrument|
  instrument.write
end
```

### Require

Anteriormente vimos um exemplo de como utilizar `require ‘gem_name’` para carregar arquivos de uma gem e assim poder escrever códigos com funcionalidades desta biblioteca.

Com ele também é possível carregar arquivos ruby.

Para exemplificar como isso acontece vamos criar um projeto onde alguns arquivos conterão apenas uma classe.

1- Dentro da pasta do projeto, vamos criar um arquivo chamado `animal.rb` com o código:

``` RB
class Animal 
  def jump
    puts 'Toing! tóim! bóim! póim!'
  end
  
  def rest
    puts 'ZzZzzz!'
  end
end
```

2- Feito isso, vamos criar um arquivo com o nome `app.rb` e adicionar a ele o código:

``` RB
require './animal.rb'

animal = Animal.new

animal.jump
```

> Podemos notar que no `require`, foi especificado o arquivo que será procurado partindo do caminho relativo a `app.rb`.
>
> Quando não estamos trabalhando com gems e queremos carregar um arquivo a partir do caminho onde o código será executado, utilize o `require_relative`.

3- Vamos substituir o código de `app.rb` por:

``` RB
require_relative 'animal'
 
animal = Animal.new
animal.jump
```

> Se o arquivo `animal.rb` estivesse dentro de uma pasta chamada example, o caminho ficaria **‘example/animal’**. Como só existe um arquivo chamado **animal.rb** não é preciso especificar a sua extensão.

4- Agora, vamos criar um arquivo chamado `cachorro.rb` com o código:

``` RB
class Dog < Animal
  def bark
    puts 'Au Au'
  end
end
```

> A classe `Dog` recebe como **herança** a classe `Animal`.
>
> Porque o **require_relative** de **animal.rb** não está ai?
>
> A resposta é simples:
>
> Iremos inicializar a classe **Dog** dentro de **app.rb** e esse arquivo já faz um require_relative de **animal.rb**!

5- Para incluir a inicialização e execução dos métodos da classe `Cachorro` iremos substituir o arquivo de `app.rb` por:

``` RB
require_relative 'animal' 
require_relative 'dog'

puts '---Animal qualquer---'
animal = Animal.new 
animal.jump
animal.rest

puts '---Cachorro---'
dog = Dog.new
dog.jump
dog.rest
dog.bark
```

6- Vamos executar o programa para ver o resultado:

```
ruby app.rb
```

### Escopo das variáveis

As variáveis se dividem em 04 tipos:

- **Variável Local**
- **Variável Global**
- **Variável de Classe**
- **Variável de Instância**

A seguir, veremos características de cada uma:

#### Variável Local

É declarada com a primeira letra de seu nome sendo uma letra `minúscula ou sublinhado`.

Pode ser **acessada apenas onde foi criada**. Por exemplo, se você definir uma variável local dentro de de uma classe ela estará disponível apenas dentro desta classe, se a definiu dentro de um método conseguirá acessá-la apenas dentro deste método e assim por diante.

Exemplo:

``` RB
class Pub
  def foo
    # Pode ser definida como local ou _local
    local = 'local é acessada apenas dentro deste metodo'
    puts local
  end

  def example
    local # não conseguimos acessar essa variével local aqui, pois ela foi defida dentro de outro método
  end
end

pub = Pub.new
pub.foo

pub.example # dar erro
```

#### Variável Global

Declarada com o prefixo `$`.

Pode ser **acessada em qualquer lugar do programa**.

Seu uso é **FORTEMENTE DESENCORAJADO** pois além de ser visível em qualquer lugar do código, também pode ser alterada em inúmeros locais ocasionando dificuldades no rastreamento de bugs.

Exemplo:

``` RB
class Pub
  def foo
    $global = 0
    puts $global
  end
end
 
class Baz
  def qux
    $global += 1
    puts $global
  end
end
 
pub = Pub.new
pub.foo

baz = Pub.new
baz.qux
baz.qux

puts $global
```

#### Variável de Classe

É declarada com o prefixo `@@`.

Pode ser acessada em qualquer lugar da classe onde foi declarada e seu valor é **compartilhado** entre todas as **instâncias de sua classe**.

Exemplo:

``` RB
class User
  @@user_count = 0
  
  def add(name)
    puts "Usuário #{name} adicionado"
    @@user_count += 1
    puts @@user_count
  end
end

first_user = User.new
first_user.add('João')

second_user = User.new
second_user.add('Mario')
```

#### Variável de Instância

Seu nome começa com o símbolo `@`.

Semelhante a variável de classe, tendo como única diferença o valor que **não é compartilhado** entre todas as **instâncias de sua classe**.

Exemplo:

``` RB
class User
  def add(name)
    @name = name
    puts "USUÁRIO adicionado"
    hello
  end

  def hello
    puts "Seja bem vindo, #{@name}!"
  end
end

user = User.new
user.add('João')
```

### **Atributos**

Como já sabemos objetos possuem informações e comportamentos.

Já vimos como utilizar métodos para representar comportamentos de um objeto. Agora é hora de  aprender como adicionar e recuperar **informações** de um objeto.

1- Para entender melhor, vamos criar um arquivo chamado `atributos.rb` com o código:

``` RB
class Dog 
  def name
    @name
  end
 
  def name= name
    @name = name
  end
end

dog = Dog.new 

dog.name = 'Marlon'

puts dog.name
```

> O segundo método recebe um valor e o atribui a variável @name.O primeiro método da classe **Dog **retorna o valor da variável de instância @name. Se a variável ainda não estiver definida, o resultado será nil.
>
> Podemos dizer que o primeiro é para recuperar e o segundo para adicionar/alterar uma informação. 
>
> Declarar os métodos de um atributo pode ser vantajoso caso queira fazer algo além de definir o valor da variável de instância. De outra forma, existe uma maneira mais fácil de realizar esta operação.  

2- Vamos substituir o código de `atributos.rb` por:

``` RB
class Dog 
  attr_accessor :name, :age
end


dog = Dog.new 

dog.name = 'Marlon'
puts dog.name

dog.age = '1 ano'
puts dog.age
```

> O ruby disponibiliza um método chamado `attr_accessor` que cria os métodos var e var= para todos atributos declarados.

### Contrutores

Outra questão importante é que toda vez que a instância de uma classe é criada, o Ruby procura por um método chamado initialize. Você pode criar este método para especificar valores padrões durante a construção da classe.

1- Vamos criar um arquivo chamado `construtor.rb` com o seguinte código:

``` RB
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
 
  def check
    puts "Instância da classe iniciada com os valores:"
    puts "Name = #{@name}"
    puts "Idade = #{@age}"
  end
end
 
person = Person.new('João', 12)
person.check
```

> O número de parâmetros utilizados no método initialize é opcional.

2- É possível criar a instância com valores padrões do objeto e executar o método check em apenas uma instrução:

``` RB
Person.new('João', 12).check
```

### Blocks

Um bloco pode ser entendido como uma função anônima, ou seja, uma função sem nome. É definido entre `do..end` ou `chaves` e da mesma forma que os métodos que você viu até agora, pode receber parâmetros para sua execução.

Usamos`chaves - {}` para escrever blocos que ocupam apenas uma linha.

1- Em um arquivo chamado `block.rb` vamos adicionar o seguinte código:

``` RB
5.times { puts "Exec the block" }
```

2- Utilizaremos `barras verticais` para passar `parâmetros` para um bloco:

``` RB
sum = 0
numbers = [5, 10, 5]
numbers.each {|number| sum += number }
puts sum
```

3- Em blocos que ocupam várias linhas, faremos o uso do `do..end`

``` RB
foo = {2 => 3, 4 => 5}

foo.each do |key, value|
  puts "key = #{key}"
  puts "value = #{value}"
  puts "key * value = #{key * value}"
  puts '---'
end
```

4- Um bloco pode ser passado como argumento implícito de um método. Depois, para chamar dentro do método o bloco que foi passado utilize a palavra `yield`:

``` RB
def foo
  # Call the block
  yield
  yield
end

foo { puts "Exec the block"}
```

> Percebemos que ao chamar o método, o bloco será executado duas vezes.

5- E se o **bloco for opcional**? O ruby oferece um método chamado `block_given?` para verificar se o bloco foi passado como argumento:

``` RB
def foo
  if block_given?
    # Call the block
    yield
  else
    puts "Sem parâmetro do tipo bloco"
  end
end

foo
foo { puts "Com parâmetro do tipo bloco"}
```

> Podemos notar que você criamos um método que executa um trecho de código se o bloco for passado como argumento e outro trecho caso não seja. 

6- Outra forma de receber **blocos como parâmetro** é utilizar o símbolo `&`

Ex:

``` RB
def foo(name, &block)
  @name = name
  block.call
end

foo('Leonardo') { puts "Hellow #{@name}" }
```

> Para executar um bloco recebido desta forma é necessário apenas utilizar o nome do bloco acompanhado pelo método `call`.
>
> Outra dica importante é sempre deixar o `&nome_do_bloco` como último parâmetro a ser recebido pelo método.

7- Podemos também passar um **bloco que ocupa várias linhas como parâmetro**:

``` RB
def foo(numbers, &block)
  if block_given?
    numbers.each do |key, value|
      block.call(key, value)
    end
  end
end

numbers = { 2 => 2, 3 => 3, 4 => 4 }


foo(numbers) do |key, value|
  puts "#{key} * #{value} = #{key * value}"
  puts "#{key} + #{value} = #{key + value}"
  puts "---"
end
```

> Ao chamar o bloco passamos os parâmetros que ele precisa para ser executado.

### Lambda

Bastante similar aos blocos com algumas diferenças.

Uma lambda é iniciada com a palavra `lambda`.

1- Vamos criar um arquivo chamado `lambda.rb` com o seguinte código:

``` RB
first_lambda = lambda { puts "My first lambda"}
first_lambda.call
```

> Ela pode ser guardada em uma variável para ser chamada futuramente com o método **call**.

2- Podemos abreviar a declaração de uma lambda usando `->`:

``` RB
first_lambda = -> { puts "My first lambda"}
first_lambda.call
```

3- Uma lambda também pode receber parâmetros para sua execução:

``` RB
first_lambda = -> (names){ names.each { |name |puts name} }

names = ["João", "Maria", "Pedro"]

first_lambda.call(names)
```

> Podemos notar, que foi executado um `block` dentro de uma `lambda`.

4- Em lambdas que ocupam várias linhas, **não declaramos a lambda de forma abreviada** e utilizamos o `do..end`:

``` RB
my_lambda = lambda do |numbers|
  index = 0
  puts 'Número atual + Próximo número'
  numbers.each do |number|
    return if numbers[index] == numbers.last
    puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
    puts numbers[index] + numbers[index + 1]
    index += 1
  end
end

numbers = [1, 2, 3, 4]

my_lambda.call(numbers)
```

#### Argumentos

1- Diferente de blocks, podemos **passar mais de uma lambda como argumentos** de um método:

``` RB
def foo(first_lambda, second_lambda)
  first_lambda.call
  second_lambda.call
end

first_lambda = lambda { puts "My first lambda" }
second_lambda = lambda { puts "My second lambda" }

foo(first_lambda, second_lambda)
```

### Modules

Um módulo é uma forma de agrupar classes, métodos e constantes. Ele é muito similar a classes, com a diferença de que você não consegue criar um objeto com ele, pois ele não possui um construtor (new).

#### Namespaces

É uma forma de organizar o seu código e evitar colisões de recursos que possuem o mesmo nome. 

1- Vamos criar um programa chamado `namespace-reverse-word.rb` e colocar nele:

``` RB
module ReverseWorld
  def self.puts(text)
    Kernel::puts text.reverse.to_s
  end
end

ReverseWorld::puts 'O resultado é'
```

2- Vamos executar o:

```
ruby namespace_reverse_word.rb
```

3- Vamos criar um arquivo chamado `namespaces-player.rb` com o seguinte código:

``` RB
module Football
  class Player 
    def self.info
      puts 'Precisa de um bom condicionamento físico.'
    end
  end
end

module VideoGame
  class Player
    def self.info
      puts 'Precisa de coordenação motora.'
    end
  end
end

Football::Player.info
VideoGame::Player.info
```

### Modules – Mixins

Já vimos uso de herança para que uma classe herde características de outra, porém, de uma forma onde a herança sempre era única. 

Agora, veremos que é possível incluir o código de um módulo em outros locais e além disso, essa forma de compartilhamento permitirá definir heranças multiplas para uma classe. Para melhor entendimento, veja isso na prática a seguir.

1- Vamos criar um programa chamado `mixins.rb` e inserir nele:

``` RB
module PrintDecorated
  def print_out(text)
    decoracao = '#' * 100
    puts decoracao
    puts text
  end
end

module Legs
  include PrintDecorated 
  
  def frontal_kick
    print_out 'Chute Frontal'
  end
  
  def side_kick
    print_out 'Chute Lateral'
  end
end

module Arms
  include PrintDecorated
  
  def right_jab
    print_out 'Jab de direita'
  end
  
  def left_jab
    print_out 'Jab de esquerda'
  end
  
  def hook
    print_out 'Gancho'
  end
end

class MuayThaiFighter
  include Legs 
  include Arms
end

class BoxingFighter
  include Arms 
end

puts 'Lutador de Muay Thai:'
muayThaiFighter = MuayThaiFighter.new
muayThaiFighter.frontal_kick
muayThaiFighter.side_kick
muayThaiFighter.right_jab
muayThaiFighter.left_jab
muayThaiFighter.hook

puts "\nLutador de Box:"
boxingFighter = BoxingFighter.new
boxingFighter.right_jab
boxingFighter.right_jab
boxingFighter.hook
```

2 – Vamos executar o programa rodando:

```
ruby mixins.rb
```

> Nós criamos um module `PrintDecorated` e incluimos ele nos outros dois modules (Legs e Arms), depois incluimos estes últimos dois modules nas classes LutadorX e LutadorY.

## Regex

Abreviatura de **Regular Expressions**(Expressões Regulares), regex é uma sequência de caracteres especiais que nos ajudam a identificar (e selecionar) padrões de caracteres em strings.

### 3 Maneiras de criar um Regex

1 – Utilizando o formato `/…/`:

**Ex:**

``` RB
/expressao/
```

> Geralmente a mais utilizada.

2 – Através do formato `%r{…}`:

**Ex:**

``` RB
%r{expressao}
```

3 – Utilizando um Construtor através do `Regexp.new(‘…’)`:

**Ex:**

``` RB
Regexp.new('expressao')
```

#### Casamento de Padrões

É um ato que verifica a presença de padrões em uma cadeia de caracteres.

Pode ser realizado através do operador `=~` ou do método `match`.

##### Operador =~

1- O operador `=~` retorna o **offset**, ou seja, a **distância entre o começo da string até o local onde ocorre o casamento de padrão** especificado na expressão.

``` RB
> /by/ =~ 'ruby'

=> 2
```

2- A mesma comparação também pode ser realizada iniciando pela string:

``` RB
> 'ruby' =~ /by/

=> 2
```

3- Quando não ocorre o casamento de padrão, o resultado é `nulo`:

``` RB
> 'ruby' =~ /rails/

=> nil
```

### Método match

1- Retorna um objeto do tipo `MatchData`, contendo todos os resultados do casamento de padrão:

``` RB
> phrase = "Hellow, how are you?"

> match_data = /how/.match(phrase)

=> #<MatchData "how">
```

2- Em um objeto do tipo `MatchData` você pode, por exemplo, acessar o que vem antes do casamento através do método `pre_match`:

``` RB
> phrase = "Hellow, how are you?"

> match_data = /how/.match(phrase)
> match_data.pre_match

=> "Hellow, "
```

3- Ou acessar o que vem depois do casamento com `post_match`:

``` RB
> phrase = "Hellow, how are you?"

> match_data = /how/.match(phrase)
> match_data.post_match

=> " are you?"
```

### Metacharacters and Escapes

Os símbolos `(, ), [, ], {, }, ., ?, +, *, **`  são `metacharacters`. Eles possuem um significado quando utilizados em expressões regulares.

1- Caso o padrão que procuramos seja um `metacharacter`, vamos utilizar o símbolo de escape `\` para realizar a busca: 

``` RB
> /\?/.match('Tudo bem?')

> /bem\!\!\!/.match('Muito bem!!!')

=> #<MatchData "bem!!!">
```

### Character Classes

É uma lista que informa quais caracteres devem aparecer em um ponto do casamento.

1- Uma `character class` é delimitada por colchetes `[, ]`:

``` RB
> /[t]exto/.match('texto começando com t')

=> #<MatchData "texto">
```

2- Podemos especificar um `range` com o símbolo `–`:

``` RB
> /[1-5]/.match('123')

=> #<MatchData "1">
```

> Assim, é procurado um padrão onde o primeiro número pode ser 1, 2, 3, 4 ou 5.

3- Podemos notar que o casamento também ocorre em uma string que começa com o número 2:

``` RB
> /[1-5]/.match('223')

=> #<MatchData "2">
```

4- O range pode ser utilizado para letras:

``` RB
> /[a-z]/.match('Oi')
=> #<MatchData "i">
```

5- Existem alguns `metacharacters` que se comportam como `character classes`. Por exemplo, o **metacharacter** `\d` verifica o padrão `[0-9]`:

``` RB
> /A\d/.match('A4')

=> #<MatchData "A4">
```

### Repetition

É possível definir a repetição de um mesmo padrão, evitando escrever a mesma coisa diversas vezes.

1- Por exemplo, vamos verificar o casamento de padrão em uma etiqueta que começa com `uma letra e 3 números`:

``` RB
> "A343".match(/[A-Z]\d{3}/)

=> #<MatchData "A343">
```

> Ao em vez de digitar `\d\d\d` podemos escrever `\d{3}`.

2- Vamos verificar se uma letra foi escrita mantendo o padrão de repetição entre `três ou mais vezes`:

``` RB
> "BBB AAAA".match(/A{3,}/)

=> #<MatchData "AAAA">
```

> A vírgula em `{3, }` informa que a repetição pode ocorrer 3 ou mais vezes.

> Conclui-se que a Expressão Regular é uma ferramenta muito poderosa, capaz de identificar qualquer padrão em uma string. [Documentação](https://ruby-doc.org/core-2.5.1/doc/regexp_rdoc.html).

## x

Math é um módulo nativo para funções matemáticas.

1- Sabendo a raiz quadrada de 64:

``` RB
> Math.sqrt(64)

=> 8.0
```

2- Verificando o logaritmo de 10000 na base 10:

``` RB
> Math.log10(10000)

=> 4.0
```

3- O logaritmo de 16 na base 2:

``` RB
> Math.log2(16)

=> 4.0
```

4- Calculando o cosseno para o ângulo de 30º. Primeiro, vamos transformar o ângulo em um valor radiano:

``` RB
> radian = 30 * (Math::PI / 180)

=> 0.5235987755982988
```

Depois vamos utilizar o método `cos`:

``` RB
> Math.cos(radian)

=> 0.8660254037844387
```

O módulo Math também fornece o valor de duas constantes bastante utilizadas: `E` e `PI`.

5- Consultando o valor da constante `E`:

``` RB
> Math::E

=> 2.718281828459045
```

6- Consultando o valor da constante `PI`:

``` RB
> Math::PI

=> 3.141592653589793
```

> Podemos acessar a mais métodos matemáticos do módulo Math através da [documentação](https://ruby-doc.org/core-2.2.0/Math.html).

## Time

O Ruby conta com uma classe chamada Time para representar datas e horas.

1- Para acessar o **horário atual** vamos executar:

``` RB
> time = Time.now

=> 2023-08-20 19:19:41 -0300
```

2- Acessando o **ano** do time com o método `year`:

``` RB
> time.year

=> 2023
```

3- Acessando o **mês** do ano com o método `month`:

``` RB
> time.month

=> 8
```

4- Acessando o **dia** do mês com o método `day`:

``` RB
> time.day

=> 20
```

5- O método `strftime` permite a formatação de uma data em uma forma específica. Essa formatação é feita por diretivas que começam com o símbolo de `%`:

``` RB
> time.strftime('%d/%m/%y')

=> "20/08/23"
```

> Significado das diretivas:
>
> `%d` -> Dia do mês
>
> `%m` -> Mês do ano
>
> `%y` -> Ano

6- Verificando se o dia da semana é sábado:

``` RB
> time.saturday?

=> false
```

7- Também podemos comparar duas datas. Vamos criar um novo objeto com o horário atual:

``` RB
> time2 = Time.now
```

8- Ao comparar as datas de forma completa o resultado será **false**:

``` RB
> time == time2 

=> false
```

9- Comparando o ano das duas datas, o resultado será **true**:

``` RB
> time.year == time2.year 

=> true
```

## Missing Methods

Voltando para o conteúdo envolvendo classes e métodos, conheça agora o método `method_missing`. Ele é utilizado para interceptar chamadas a métodos que não existem.

1- Para entendermos como implementar este método. Iremos criar um arquivo chamado `method_missing.rb` com o seguinte código:

``` RB
class Fish
 def method_missing(method_name)
   puts "Fish don't have #{method_name} behavior"
 end
 
 def swim
   puts 'Fish is swimming'
 end
end
 
fish = Fish.new
fish.swim
fish.walk
```

> A partir daí podemos controlar como responder este tipo de situação. Quando o método `walk` que não existe é chamado, o método `method_missing` faz uma interceptação. Nele é recebido como parâmetro o nome do método que não existe.
