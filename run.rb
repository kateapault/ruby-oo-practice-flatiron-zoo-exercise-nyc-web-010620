require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

a_species = ["Cheetah","Cheetah","Cheetah","Elephant","Elephant","Giraffe","Gorilla","Flamingo","Parrot"]
a_weight = [140,135,138,600,650,400,250,70,8]
a_names = ["Ana","Bobo","CheeChee","Dingus","Echo","Fearless","GeeGee","Hattie","Iago"]

z_names = ["Bronx Zoo", "NJ Zoo", "Brooklyn Zoo"]
z_locations = ['NY', "NJ", "NY"]

(0..2).each { |i| Zoo.new(z_names[i],z_locations[i]) }
(0..8).each { |i| Animal.new(a_species[i],a_weight[i],a_names[i]) }

z = Zoo.all
a = Animal.all

z[0].add_animal(a_species[0],a_names[0])
z[0].add_animal(a_species[1],a_names[1])
z[1].add_animal(a_species[2],a_names[2])
z[1].add_animal(a_species[3],a_names[3])
z[2].add_animal(a_species[4],a_names[4])
z[2].add_animal(a_species[5],a_names[5])
z[0].add_animal(a_species[6],a_names[6])
z[1].add_animal(a_species[7],a_names[7])
z[2].add_animal(a_species[8],a_names[8])

#Test your code here


binding.pry
puts "done"
