# https://ruby-doc.org/stdlib-3.1.0/libdoc/net/http/rdoc/Net/HTTP.html

require 'net/http'

req = Net::HTTP::Post.new("/api/users") # inicializamos um objeto **Net::HTTP::Post.new()** passando como argumento o caminho da url
req.set_form_data({ name:'Mario', job:'Encanador' }) # Informamos quais são os  parâmetros a serem enviados com o método **set_form_data**

# para fazer chamadas https
response = Net::HTTP.start('reqres.in', use_ssl: true) do |http| # Por fim utilizamos o método **start** para criar uma conexão com o servidor e dentro de um bloco fez a requisição **POST**
  http.request(req)
end

puts response.code
puts response.body

