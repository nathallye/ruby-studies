require 'net/http'

https = Net::HTTP.new('reqres.in', 443) # **Construiu** um objeto **Net::HTTP** iniciando com os valores de **domínio('reqres.in')** e **porta(443)** - E salva tudo na variável https

https.use_ssl = true # Para fazer chamadas https, informamos que é uma requisição que utiliza o certificado ssl com o método **use_ssl = true**

response = https.get("/api/users") # Get para o caminho **api/users**(o path que queremos chamar)

puts response.code # Exibir o código da resposta
puts response.message # Exibir o status/message 
puts response.body # Exibir o body (formato json)
