#### **Web Scraping**

# O que você faria se precisasse percorrer diversas páginas de um site coletando um tipo específico de informação? Ou recuperar dados que não são fornecidos por uma API?

# O Web Scraping existe para evitar essas tarefas manuais, ou então, trabalhosas. Uma técnica que automatiza o processo de extração de dados de uma página web.

# Uma das bibliotecas mais utilizadas no mundo ruby para fazer isso é a **nokogiri**.

# É necessário instalar a gem **nokogiri** com o comando: gem install nokogiri

require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('onebitcode.com', 443) # Para fazer chamadas https, realizamos uma **requisição** para o site do **onebitcode**, porta 443.

https.use_ssl = true # Para fazer chamadas https, informamos que é uma requisição que utiliza o certificado ssl com o método **use_ssl = true**

response = https.get("/") # get para o caminho **/(o path que queremos chamar- que nesse caso é a raiz desse site)**

doc = Nokogiri::HTML(response.body) # Utilizamos **Nokogiri::HTML** para **parsear(analisar os dados)** o documento **HTML**. Passamos como argumento a variável response, .body para selecionar o corpo da página html da página solicitada).

h1 = doc.at('h1') # Por fim, fizemos fez uso do método **at** para buscar a tag **h1** demtro do documento 

puts h1.content # Com o h1 em mãos, podemos acessar alguns atributos. Nesse caso usamos o **content** para imprimir o seu conteúdo de h1.




### O ultimo post do onebitcode encontra-se dentro das tags **<h3> <a href=’/ultimo-post’>Título Ultimo Post</a></h3>**
# Para buscar este post podemos fazer assim:
last_post = doc.at('h3 a')
puts last_post.content # Acessando o conteúdo dentro da Tag 'a'(titulo)
puts last_post['href'] # Buscando o atributo href da tag a (vai retornar o link da tag a, que é do primeiro post do blog)




### Também podemos procurar por **todos os posts** que estão na página inicial do onebitcode com o **método search**:
doc.search('h3 a').each do |a| # .search busca por todos. Fazemos uma iteração para passar por cada e imprimir o conteúdo da tag a(titulo) e o link.
  puts a.content
  puts a['href']
  puts ''
end