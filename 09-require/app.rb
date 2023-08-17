require_relative 'animal' 
require_relative 'dog'

puts '---Animal qualquer---'
animal = Animal.new 
animal.jump
animal.rest

puts '---Cachorro---'
dog = Dog.new
dog.jump
dog.rest
dog.bark