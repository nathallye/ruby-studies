require_relative 'product.rb'
require_relative 'market.rb'

product = Product.new
product.name = 'Tomate'
product.price = 2.50

product2 = Product.new 
product2.name = 'Cebola'
product2.price = 3.50

Market.new(product.name, product.price).buy # Inicializando a instância da classe Mercado e passando como parametros do método initialize o que foi definido em product(name, price) e ele vai receber como (product, price); .buy - por fim executamos o método comprar

Market.new(product2.name, product2.price).buy