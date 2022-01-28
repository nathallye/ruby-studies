# https://ruby-doc.org/stdlib-3.1.0/libdoc/net/http/rdoc/Net/HTTP.html

##### **Chamadas Web**

# Talvez sua aplicação precise recuperar informações, enviar formulários, ou então, enviar documentos para websites.
# Para isso o ruby conta com uma biblioteca chamada **Net::HTTP** que é capaz de realizar chamadas web.

### **Requisições http**

require 'net/http' # require para carregar a biblioteca

example = Net::HTTP.get('example.com', '/index.html') # É feito uma requisição **HTTP** do tipo **GET para o domínio example.com, com o caminho **/index.html**. 
# É a mesma coisa que entrar no browser e procurar pelo endereço [**http://example.com/index.html**](http://example.com/index.html)

File.open('example.html', 'w') do |line| # Quando utilizamos  **File.open** para um arquivo inexistente, o ruby detectou isso e **criou o arquivo** antes de escrever as informações nele.
 line.puts(example) # salvou a **resposta** dentro de uma variável para depois escrevê-la dentro de um arquivo.
end






