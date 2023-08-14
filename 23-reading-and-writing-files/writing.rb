### **Escrita de Arquivos**:
# Vamos adicionar mais itens à lista de compras e aprender como **inserir conteúdo** dentro de um arquivo.

File.open('shopping-list.txt', 'a') do |line| # Para adicionar conteúdo sem sobrescrever o que já existe, foi necessário passar o argumento **‘a’**. **Este argumento significa **append**, ou seja, acrescentar conteúdo.
  line.puts('arroz')
  line.puts('feijão')
  line.print('azeite')
  line.print(' de ')
  line.print('oliva') 
  # Os métodos **puts** e **print** tem o mesmo significado, os dois inserem valores ao arquivo, com a diferença de que apenas o **puts** insere uma **nova linha** após a string.
end

# Para substituir o conteúdo desse arquivo utilizamos o argumento **‘w’**
File.open('shopping-list.txt', 'w') do |line|
  line.puts('batata')
end
# Após executar, a lista de compras contará apenas com o item batata.

# OBS.: Se passarmos um arquivo já existente ele vai buscar, se não existir, ele vai criar.


### Por curiosidade, para saber o tamanho do arquivo gerado abrindo o **irb**:
# File.open('shopping-list.txt').size
# O método **size** retorna o tamanho do arquivo em **bytes**
