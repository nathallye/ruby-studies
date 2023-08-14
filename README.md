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

> A instrução **puts** vai imprimir a mensagem ‘Hello, World!’ toda vez que nosso programa for executado.
 
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

Tipo de dado usado para informar a veracidade de algo. Possui apenas dois estados, sendo eles **true** que é uma instância da classe `TrueClass` e **false** que é uma instância da classe `FalseClass`.
 
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

> Perceba que primeiro é exibido uma mensagem pedindo que a pessoa informe seu nome. Depois é criado uma variável chamada **name** que é igual a `gets.chomp`.
>
> **gets** é um método que recebe como entrada um dado inserido pelo teclado. Como ele captura qualquer coisa precisamos do `.chomp` para que quando o enter for pressionado ele não crie uma quebra de linha.
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

5. Executando o programa

```
> ruby arithmetic_io.rb
```

Depois de inserir dois valores inteiros, a saída é o resultado da adição entre os dois números.