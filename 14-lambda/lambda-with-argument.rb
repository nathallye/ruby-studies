def foo(first_lambda, second_lambda)
  first_lambda.call 
  second_lambda.call
end

first_lambda = lambda { puts "My first lambda" }
second_lambda = lambda { puts "My second lambda" }

foo(first_lambda, second_lambda)


