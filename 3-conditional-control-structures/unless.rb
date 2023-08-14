product_status = 'open' # status_produto = 'escolhida'

unless product_status == 'open' # ao menos que o status do produto não seja igual a aberto 
  check_change = 'can' #verifica_mudança = 'posso'
else #se não estiver aberto
  check_change = 'can not' #verifica_mudança = 'não posso'
end

puts "You #{check_change} change the product."