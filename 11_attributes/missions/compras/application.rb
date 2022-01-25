require_relative 'product.rb'
require_relative 'market.rb'

produto = Produto.new # Inicializando a intância da classe produto que tem os atributos: nome e preco
produto.nome = 'Tomate'
produto.preco = 2.50

produto2 = Produto.new # Inicializando a intância da classe produto que tem os atributos: nome e preco
produto2.nome = 'Cebola'
produto2.preco = 3.50

Mercado.new(produto.nome, produto.preco).comprar # Inicializando a instância da classe Mercado e passando como parametros do método initialize o que foi definido em produto(nome, preco) e ele vai receber como (produto, preco)

# .comprar : por fim executamos o método comprar

Mercado.new(produto2.nome, produto2.preco).comprar