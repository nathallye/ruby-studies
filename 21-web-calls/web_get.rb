require 'net/http' # Require para carregar a biblioteca

example = Net::HTTP.get('example.com', '/index.html') # É feito uma requisição **HTTP** do tipo **GET** para o domínio example.com, com o caminho **/index.html**. 
# É a mesma coisa que entrar no browser e procurar pelo endereço http://example.com/index.html

File.open('example.html', 'w') do |line| # Quando utilizamos  **File.open** para um arquivo inexistente, o ruby detectou isso e **criou o arquivo** antes de escrever as informações nele.
 line.puts(example) # Salvou a **resposta** dentro de uma variável para depois escrevê-la dentro de um arquivo.
end






