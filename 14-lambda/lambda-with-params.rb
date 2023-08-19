first_lambda = -> (names){ names.each { |name| puts name} }

names = ["João", "Maria", "Pedro"]

first_lambda.call(names) # passando como argumento a variével names; basicamente executamos um block dentro de uma lambda