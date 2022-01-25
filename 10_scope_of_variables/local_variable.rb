# É declarada com a primeira letra de seu nome sendo uma letra minúscula ou sublinhado.

# Pode ser acessada apenas onde foi criada. 
# Por exemplo, se você definir uma variável local dentro de de uma classe ela estará disponível apenas dentro desta classe, se a definiu dentro de um método conseguirá acessá-la apenas dentro deste método e assim por diante.

class Bar
  def foo
    # Pode ser definida como local ou _local
    local = 'local é acessada apenas dentro deste metodo'
    puts local
  end

  def example
    local # não conseguimos acessar essa variével local aqui, pois ela foi defida dentro de outro método
  end
end

bar = Bar.new
bar.foo

bar.example # dar erro