#Métodos Útiles
=begin 
Adelante, intenta los siguientes métodos:
.include?(value) => devuelve true or false
.last => devuelve el último objeto en el Range
.max => devuelve el valor máximo en el Range
.min => devuelve el valor mínimo en el Range
=end

a= ["cher", "carl", "ron", "isa"] 
b= [1,2,30,40,0]

puts a.include?("oso") #false

puts b.last 
puts b.max
puts b.min



print "\n"
#range
puts (1..25).include?(30) #=> devuelve true or false-->false
puts (1..25).last #=> devuelve el último objeto en el Range-->25
puts (1..25).max #=> devuelve el valor máximo en el Range->25
puts (1..25).min #=> devuelve el valor mínimo en el Range-->1
