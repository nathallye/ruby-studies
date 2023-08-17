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

```
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

```
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

```
> integer_number = -20
```

2. Vamos confirmar que a variável realmente é do tipo **Integer**, executando:

``` 
> integer_number.class
=> Integer
```

### Float

Tipo que representa os números reais inexatos.  De forma abreviada, são números decimais, números que contêm ponto flutuante.

1. Vamos criar um objeto tenha o tipo **Float** atribuindo a ele um valor decimal:

> (praticamente tudo no ruby é um objeto).

```
> float_number = -20.05
```

2. Vamos provar que o objeto realmente é do tipo **Float**, executando:

```
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

```
> first_array = [0, 1, 2]
```

2. Em seguida, acessar a terceira posição do nosso array:

```
> first_array[2]
=> 2
```

### Symbol

É um tipo de dado semelhante a **String**, com a diferença de que ele é um objeto imutável. Duas strings idênticas podem ser objetos diferentes, mas um símbolo é apenas um objeto, ocupando sempre o mesmo espaço na memória.

Um símbolo sempre é definido começando com dois pontos `:` seguido por seu nome.

1. Vamos iniciar um objeto do tipo **Symbol** atribuindo à uma variável o seguinte valor:

```
> first_symbol = :ruby_symbol
```

2. Vamos descobrir qual posição da memória esse símbolo está salvo, rodando:

```
> first_symbol.object_id
=> 2224028
```

3. Agora vamos criar outra variável com o mesmo símbolo e veremos que ela aponta para o mesmo endereço na memória:

```
> second_symbol = :ruby_symbol
> second_symbol.object_id
=> 2224028
> first_symbol.object_id
=> 2224028
```

4. Para confirmar que o objeto é do tipo **Symbol**:

```
> first_symbol.class
=> Symbol
```

### Hash

Tipo que representa uma coleção de dados organizados por chaves únicas e seus respectivos valores. Enquanto arrays são definidos com colchetes, hashes são definidos com chaves ‘{ }’.

1. Vamos criar um objeto do tipo **Hash** adicionando a uma variável o seguinte valor:

```
> first_hash = {course: 'ruby', language: 'pt-Br' }
```

2. Agora, vamos encontrar o tipo do curso rodando:

```
> first_hash[:course]
=> "ruby"
```

### Tipagem Dinâmica

No ruby não é preciso definir o tipo de dado antes de atribuir um valor à uma variável. O tipo é dinâmico, ou seja, ele é definido de acordo com o dado atribuído.

Um exemplo é que podemos alterar o valor de uma variável diversas vezes e em cada uma delas notar que o tipo de dado também mudou:

```
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

```
> states = []
```

> Collections podem ter zero ou mais elementos.

#### Adicionando itens

1- Insirindo um novo item ao array `states`:

```
> states.push('Espírito Santo')
```

> O `push` sempre irá adicionar itens de forma sequencial.

2- Também é possível inserir vários elementos de uma só vez:

```
> states.push('Minas Gerais', 'Rio de Janeiro', 'São Paulo')
```

3- Vejamos o array `states` com a instrução

```
> puts states
=> 
Espírito Santo
Minas Gerais
Rio de Janeiro
São Paulo
```

4- Para manter nossa coleção organizada em ordem alfabética ao inserir os itens ‘Acre’ e ‘Amapá’, devemos especificar que eles ocuparão as primeiras posições do array. Para isso contamos com o `insert`:

```
> states.insert(0, 'Acre', 'Amapá')
=> ["Acre", "Amapá", "Espírito Santo", "Minas Gerais", "Rio de Janeiro", "São Paulo"]
```

#### Acessando elementos

O item de um array pode ser acessado pelo valor de seu index.

1- Recuperando o segundo elemento do array `states`:

```
> states[1]
=> "Amapá"
```

2- Também podemos acessar índices através de intervalos:

```
> states[2..5]
=> ["Espírito Santo", "Minas Gerais", "Rio de Janeiro", "São Paulo"]
```

> Retorna os itens dos índices 2, 3, 4 e 5.
>
> Utilizando números negativos conseguimos recuperar elementos a partir do ultimo item do array, de forma regressiva. O número -1 representa o ultimo elemento.

3- Adquirindo o penultimo elemento de `states`:

```
> states[-2]
=> "Rio de Janeiro"
```

4- Também funciona com intervalos:

```
> states[-3..-1]
=> ["Minas Gerais", "Rio de Janeiro", "São Paulo"]
```

5- Uma forma muito intuitiva e natural de recuperar o primeiro item é usar `first`:

```
> states.first
=> "Acre"
```

#### Obtendo informações

1- Para saber a quantidade de itens em um Array podemos utilizar qualquer uma destas duas instruções:

```
> states.count
=> 6

> states.length
=> 6
```

2- Descubrindo se o array está vazio:

```
> states.empty?
=> false
```

3- Verificando se um item específico está presente:

```
> states.include?('São Paulo')
=> true
```

> Igual ao `empty`, o `include` também resulta um valor verdadeiro ou falso.

#### Excluindo elementos

1- Removendo um item através de seu índice:

```
> states.delete_at(2)
=> "Espírito Santo"
```

2- Excluindo o último item do array:

```
> states.pop
=> "São Paulo"
```

3- Excluindo o primeiro item do array:

```
> states.shift
=> "Acre"
```

### Hash

#### Novo Hash

1- Criando um hash vazio:

```
> capitals = Hash.new
```

2- Um hash também pode ser iniciado com vários pares de chave-valor:

``` 
> capitals = { acre: 'Rio Branco', sao_paulo: 'São Paulo'}
=> {:acre=>"Rio Branco", :sao_paulo=>"São Paulo"}
```

3- A chave de um hash pode ser qualquer tipo de dado:

```
> hash = {1 => 'Chave do tipo inteiro', true => 'Chave do tipo booleano', [1,2,3] => 'Chave do tipo array'}
=> {1=>"Chave do tipo inteiro", true=>"Chave do tipo booleano", [1, 2, 3]=>"Chave do tipo array"}
```

#### Adicionando itens

1- Adicionando um novo item ao hash:

```
> capitals[:minas_gerais] = "Belo Horizonte"
```

2- Acessando a capital que acabamos de inserir utilizando sua chave:

```
> capitals[:minas_gerais]
=> "Belo Horizonte"
```

> De forma sucinta, a chave é o index de nossos itens.

3- Para retornar todas as chaves de um hash:

```
> capitals.keys
=> [:acre, :sao_paulo, :minas_gerais]
```

4- Agora, todos os valores de um hash:

```
> capitals.values
=> ["Rio Branco", "São Paulo", "Belo Horizonte"]
```

#### Exclusão

1- Removendo um elemento chave-valor:

```
> capitals.delete(:acre)
=> "Rio Branco"
```

2- Verificando se o hash está vazio:

```
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

puts "\n Executando .map multiplicando cada item por 2"

# .map não altera o conteúdo do array original
new_array = array.map do |element| 
  element * 2
end

puts "\n Array Original"
puts " #{array}"

puts "\n Novo Array"
puts " #{new_array}"
```

2- Agora, vamos criar um arquivo chamado `map!.rb` com o seguinte código:

``` RB
array = [1, 2, 3, 4]

puts "\n Executando .map! multiplicando cada item por 2"
puts "\n Array Original"
puts " #{array}"

# .map! a "!" força que o conteúdo do array original seja alterado
array.map! do |element| 
  element * 2
end

puts "\n Array Sobrescrito"
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