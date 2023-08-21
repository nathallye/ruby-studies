class Foo
  attr_accessor :teste

  def bar
    puts self 
  end
end

foo = Foo.new
puts foo 
foo.bar 
# **puts foo** e **puts self** retornam o mesmo resultado.
# => #<Foo:0x00007f443e1dd3a8>
# => #<Foo:0x00007f443e1dd3a8>
