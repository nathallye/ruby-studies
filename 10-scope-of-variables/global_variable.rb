# Declarada com o prefixo $.

# Pode ser acessada em qualquer lugar do programa.

# Seu uso é **FORTEMENTE DESENCORAJADO** pois além de ser visível em qualquer lugar do código, também pode ser alterada em inúmeros locais ocasionando dificuldades no rastreamento de bugs.

class Bar
  def foo
    $global = 0 # definimos aqui essa variável
    puts $global
  end
end
 
class Baz
  def qux
    $global += 1 # e consiguimos acessar aqui também
    puts $global
  end
end
 
bar = Bar.new
bar.foo

baz = Baz.new
baz.qux
baz.qux

puts $global