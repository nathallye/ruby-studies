##### **TIME**
# O Ruby conta com uma classe chamada Time para representar datas e horas. Podemos utilizar alguns métodos dessa classe para obter informações do tempo.

### Trabalhando com times:

# 1- Para imprimir o horário atual:
time = Time.now
puts time

# 2- Para o ano use o método **year**:
puts time.year

# 3- Imprimindo o mês do ano com o método **month**:
puts time.month

# 4- Para saber o dia do mês utilize o método **day**:
puts time.day

# 5- O método **strftime** permite a formatação de uma data em uma forma específica. Essa formatação é feita por diretivas que começam com o símbolo de %:
time.strftime('%d/%m/%y')
# Significado das diretivas:
# %d -> Dia do mês
# %m -> Mês do ano
# %y -> Ano

# 6- Verificando se o dia da semana é sábado:
puts time.saturday?

# 7- Também podemos comparar duas datas:
# Para isso vamos criar um novo objeto com o horário atual:
time2 = Time.now
# Ao compararmos as datas de forma completa o resultado será **false**
time == time2 
# => false

# 9- Comparando o ano das duas datas, o resultado será **true**:
time.year == time2.year 
# => true

