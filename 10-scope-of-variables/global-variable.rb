class Pub
  def foo
    $global = 0 # definimos aqui essa variável
    puts $global
  end
end
 
class Baz
  def qux
    $global += 1 # e consiguimos acessar aqui também e incrementar valor a ela
    puts $global
  end
end
 
pub = Pub.new
pub.foo

baz = Baz.new
baz.qux
baz.qux

puts $global