##### EXISTEM 3 FORMAS DE CRIAR UMA REGEX:
### 1. Utilizando barras (forma mais utilizada)
/expressao/

### 2. Ulizando o símbolo de %r e chaves{}
%r{expressao}

### 3. Utilizando a classe que já vem por padrão no Ruby (Regexp)
Regexp.new('expressao')




##### CASAMENTO DE PADRÕES:
### 1. =~ : Retorna um offset(a distância entre o começo de uma string até o local onde acorre o casamento de padrão que vai ser especificado).
# Ex.:
/by/ =~ 'ruby' # Está buscando o padrão by na string 'ruby' e retorna => 2, ou seja, a distância entre o começo da string até o local de onde ocorre o casamento(inicia no indice 0, igual o array)

# r  u  b  y
# 0  1  2  3

# Quando não ocorre o casamento de padrão o retorno é => nil (nulo)

### 2. Utilizando o métopdo match:
pharse = 'hello how are you?'

match_data = /now/.match(pharse) # Verifica o casamento de padrão na string da variável pharse e salva o retorno na variável match_data.
# Retorno => #<MatchData "how">
# Recebemos como resultado um objeto do tipo: MatchData, e dentro desse objeto temos o camento de padrão que ocorreu.




##### COM O OBJETO MATCHDATA PODEMOS FAZER OUTRAS MANIPULAÇÕES:
### 1. Utilizar o método **pre_match** para verificar o que ocorre antes do casamento.

### 2. Utilizar o método **post_match** para verificar o que ocorre depois do casamento.




##### METACARACTERES:
# São os conjuntos de símbolos(simbols) que tem um significado quando utilizamos em expressões regulares.
# Ex.: (, ), [, ], {, }, ., ?, +, *, **

##### SCAPE:
# Quando queremos procurar um casamento de padrão em um desses metacaracteres supracitados.
# O scape é uma forma de escapar desse significado que eles possuem.
# Para isso podemos utilizar a barra invertida "\".
# Ex.:
/\?/.match('Tudo bem?')
# Retorno => #<MatchData "?">

# Ex.2:
/bem\!\!\!/.match('Muito bem!!!')
# Retorno => #<MatchData "bem!!!">




##### CLASSE DE CARACTERES(CHARACTER CLASS):
# É uma lista que informa quais caracteres devem aparecer em determinado ponto do casamento.
# Para isso usamos o simbol de colchetes [] para delimitar a character class.
# Ex.:
/[t]exto/.match('texto começando com t')
# Retorno => #<MatchData "texto">

# Ex.2:
/[1-5]/.match('123') # [1-5] é um ranger
# Retorno => #<MatchData "1"> 
# (O primeiro n° que corresponde ao casamento de padrão delimitado no ranger foi o 1)

# Ex.3:
/[a-z]/.match('Oi')
# Retorno => #<MatchData "i">
# (Pois o "O" não faz parte do ranger de caracteres passado)




##### METACACTERE
# Se comporta como um character class "\d"(busca um casamento de padrão de 0 a 9).
# Ex.:
/A\d/.match('A4')
# Retorno => #<MatchData "A4">

### REPETIÇÃO:
# Usamos chaves {}.
# Ex.:
/[A-Z]\d{3}/.match('A343')
# Retorno => #<MatchData "A343">

## PARA PROCURAR 2 OU MAIS VEZES USAMOS A VIRGULA(,) DEPOIS DO NÚMERO:
# Ex.:
/[A-Z]\d{2,}/.match('A343')
# Retorno => #<MatchData "A343">

