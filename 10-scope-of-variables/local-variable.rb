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