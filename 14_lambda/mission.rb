def capitalize_name(lambda_capitalize) # Método recebe uma lambda como argumento
  lambda_capitalize.call('leonardo') # Aqui executa a lambda que recebeu como parâmetro, e passa um nome como parâmetro para a lambda
  lambda_capitalize.call('paulo')
end

lambda_params = -> (name) { puts name.capitalize }

capitalize_name(lambda_params) # Chamando o método capitalize_name passando a lambda definida acima, como argumento