# https://ruby-doc.org/stdlib-3.1.0/libdoc/net/http/rdoc/Net/HTTP.html

#### **Requisições https**

# Para fazer as próximas requisições  utilizaremos o site [https://reqres.in](https://reqres.in/
# Ele está preparado para **receber e responder** nossas **requisições**, o que facilitará os testes de requisições **https**.
# A diferença entre http e https é que o https é criptografado.

require 'net/http' # require para carregar a biblioteca

https = Net::HTTP.new('reqres.in', 443) # **construiu** um objeto **Net::HTTP** iniciando com os valores de **domínio('reqres.in')** e **porta(443)** - E salva tudo na variável https

https.use_ssl = true # Para fazer chamadas https, informamos que é uma requisição que utiliza o certificado ssl com o método **use_ssl = true**

response = https.get("/api/users") # get para o caminho **api/users(o path que queremos chamar**

puts response.code # Exibir o código da resposta
puts response.message # Exibir o status/message 
puts response.body # Exibir o body (formato json)
