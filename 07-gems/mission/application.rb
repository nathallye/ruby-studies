# https://github.com/fnando/cpf_cnpj

require 'cpf_cnpj'

def validation(cpf_number)
  if CPF.valid?(cpf_number)
    return 'O CPF informado é válido.'
  else
    return 'O CPF informado é inválido.'
  end
end

print 'Insira seu CPF: '
cpf_number = gets.chomp

result = validation(cpf_number)

puts result
