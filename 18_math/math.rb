# DOCUMENTAÇÃO: https://ruby-doc.org/core-2.2.0/Math.html

##### **Math**
# Math é um módulo nativo para funções matemáticas.

# 1- Sabendo a raiz quadrada de 64:
Math.sqrt(64)

# 2- Verificando o logaritmo de 10000 na base 10:
Math.log10(10000)

# 3- O logaritmo de 16 na base 2:
Math.log2(16)

# 4- Calculando o cosseno para o ângulo de 30°. Primeiro é necessário trânsformar o ângulo em um valor radiano:
radian = 30 * (Math::PI / 180)
# Depois podemos utilizar o método **cos**:
Math.cos(radian)


### O módulo Math também fornece o valor de duas constantes bastante utilizadas:
# **E** e **PI**

# 5- Para consultarmos o valor da constante E:
Math::E

# 6- Consultando o valor da constante **PI**:
Math::PI
