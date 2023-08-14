##### **Leitura e Escrita de Arquivos**
# O ruby torna sua vida mais fácil oferecendo uma forma simples para **leitura e escrita** de **arquivos**.
# Através de poucas instruções, é possível **ler **o conteúdo, ou então, **escrever **algumas informações dentro de um **arquivo externo**. Isso é feito por meio de uma classe chamada **File,** a qual conta com diversas opções para **manipulação de arquivos**.




### **Leitura de arquivo**: 
# Para entendermos melhor vamos fazer uma lista de compras em um arquivo de texto(list.txt) e depois lvamos ler cada item da lista usando um programa Ruby. 

puts '--Lista de Compras--'

file = File.open('list.txt') # Usamos o método **open** da classe **File** para acessar o arquivo (list.txt).

file.each do |line| # ** Depois o método de iteração **each** para percorrer cada linha
  puts line # e exibir cada linha do arquivo.
end
