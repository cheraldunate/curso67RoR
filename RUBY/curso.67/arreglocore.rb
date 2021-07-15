#.step


#hash
# => hash rocket
auto = {"marca" => "nissan", "modelo" => "nn"}
#consultar
puts auto ["modelo"]------>nn

#queremos eliminar o restar c al arreglo (≠+), no aparecera dojo ni 9

x = (a+b)-c
puts x.to_s 

#.upto(limit) #=> recorre el bloque hasta alcanzar el número límite   
1.upto(255) {|i| print i, " "} # => 1..255

#.reject { |obj| block } #=> lo opuesto de find_all
#remove even(pares) numbers
puts (1..255).reject { |i| i % 2 == 0 }.to_s #todos los que son pares no imprimir
puts (1..255).select { |i| i % 2 != 0 }.to_s #todos los impares se muestran

#reemplazar un elemento
arreglo[2] ='n'

#to_s: cambia temporalemnte a un string

for elemento in arreglo 
    puts elemento
end

#each accede a los elementos del arreglo
arreglo.each do |elemento| 
    puts "el valor del elemento es #{elemento}"
end

#each_with_index: accedemos a los elementos y al indice
arreglo.each_with_index do |x, i|
    puts "posicion #{indice} - valor #{elemento}"

#agregar al final del arreglo
    arreglo.push('h')
    puts arreglo.to_s

#agregar al icicio del arreglo, en la posicion0, el i, desplazando,
# no cambia el elemento
arreglo.insert(0,'i')
puts arreglo.to_s
arreglo.insert(5,'j')
puts arreglo.to_s

#eliminar un elemento del arreglo
arreglo.delete('n')
puts arreglo.to_s

#eliminar elemento por posicion, y agregamos 
arreglo.delete_at(0)
arreglo.insert(8,'i')
puts arreglo.to_s

#metodos utiles para el manejo de arreglos
#first:devuelve el primer elemento
puts arreglo.first
#last
puts arreglo.last
#size
puts arreglo.soze
#length
puts arreglo.length
#fetch/ devuelve el elemeto de la posicion en forma negativa o positiva
puts arreglo.fetch(3) 
#at lo mismo que fetch
puts arreglo.fetch(3)
#reverse
puts arreglo.reverse

#bang (!) persistencia temporal, deja de ser temp cuando se aplica !
#shuffle mezcla
puts arreglo.shuffle.to_s
puts arreglo.shuffle!.to_s
puts arreglo.to_s

#sort ordena el arreglo
puts arreglo.sort.to_s
puts arreglo.sort!.to_s

#.values_at() -> devuelve un arreglo con los valores específicados en los parametros. 
a = %w{gato perro oso}; 
puts a.values_at(1,2).join(' and ') #=> "perro y oso", join=unir

#alternative way of creating an array %w{}


#returns the first value or 0th index of the array
puts a[0]
puts b[0]
puts a+b


#.split
puts “cher, al, r, a2”.split(“,”)
#—> los separa o divide hacia abajado después de cada ,

.unless: A menos que la edad del cliente sea menor de 21 déjelo entrar, si no, rechácelos en la puerta.
unless age < 21
  puts "Bienvenido a la fiesta."
else
  puts "Todavía no."
end
puts "Soy positivo." if "hello"
puts "Soy positivo." if 24
puts "Soy negativo" unless nil
puts "Soy negativo" unless false

puts x.capitalize primera letra mayuscula
puts x.upcase para tener todas las letras mayusculas
puts x.downcase para todasminusculas
puts x[0]

.even--->Devuelve verdadera si int es un número par.

.new
fred = Class.new do
  def meth1
    "hello"
  end
  def meth2
    "bye"
  end
end

a = fred.new     #=> #<#<Class:0x100381890>:0x100376b98>
a.meth1          #=> "hello"
a.meth2          #=> "bye"


.select
[1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]

a = %w{ a b c d e f }
a.select { |v| v =~ /[aeiou]/ }  #=> ["a", "e"]

.str -->muta str
str = "bar"
str[0] = "c"
puts str # => "car"

#puts b.class #devuleve array

.#using .delete ELIMINAR UN ELEMENTO DEL ARRAY
#a.delete("Choi")
#puts a

.fetch
h = { "a" => 100, "b" => 200 }
h.fetch("a")                            #=> 100
h.fetch("z", "go fish")                 #=> "go fish"
h.fetch("z") { |el| "go fish, #{el}"}   #=> "go fish, z"


.sort
ary = [ "d", "a", "e", "c", "b" ]
ary.sort!                     #=> ["a", "b", "c", "d", "e"]
ary.sort! { |a, b| b <=> a }  #=> ["e", "d", "c", "b", "a"]

.slice
a = [ "a", "b", "c" ]
a.slice!(1)     #=> "b"
a               #=> ["a", "c"]
a.slice!(-1)    #=> "c"
a               #=> ["a"]
a.slice!(100)   #=> nil
a               #=> ["a"]

.insert ---> a = %w{ a b c d }
a.insert(2, 99)         #=> ["a", "b", 99, "c", "d"]
a.insert(-2, 1, 2, 3)   #=> ["a", "b", 99, "c", 1, 2, 3, "d"]

.replace
a = [ "a", "b", "c", "d", "e" ]
a.replace([ "x", "y", "z" ])   #=> ["x", "y", "z"]
a                              #=> ["x", "y", "z"]

.empty? --> esta vacia?
"".empty?      # => true
"hola".empty? # => false

.push --> agrega al final
a = [ "a", "b", "c" ]
a.push("d", "e", "f")
        #=> ["a", "b", "c", "d", "e", "f"]
[1, 2, 3].push(4).push(5)
        #=> [1, 2, 3, 4, 5]

.pop  --> quita al final
a = [ "a", "b", "c", "d" ]
a.pop     #=> "d"
a.pop(2)  #=> ["b", "c"]
a         #=> ["a"]

.shuffle ---> ordena los elementos en diferentes ordenes

#using .shuffle PARA MEZCLAR O REORDENAR VALORES DEL ARRAY
a = [ 1, 2, 3 ]           #=> [1, 2, 3]
a.shuffle                 #=> [2, 3, 1]
a                         #=> [1, 2, 3]
                      

#puts a.shuffle.join(',')

.join    ---> devuelve un string, o array
[ "a", "b", "c" ].join        #=> "abc"
[ "a", "b", "c" ].join("-")   #=> "a-b-c"


.incluide?("")---> devuelve true or false/preguta esta incluido este string en la funcion?



.reverse --->puts x.reverse (orden del array al revez)
[ "a", "b", "c" ].reverse   #=> ["c", "b", "a"]
[ 1 ].reverse               #=> [1]


.length  ---> puts x.length (cant de elementos del array)
"hola".length # => 4

# "length a.length"
puts "length of a is #{a.length}"
puts a

.split
"hola".split                 # => ["hola"] 
"hola".split("")             # => ["h", "o", "l", "a"]
"oscar@gmail.com".split("@")  # => ["oscar", "gmail.com"] 


print "\n"
#range
puts (1..25).include?(30) #=> devuelve true or false-->false
puts (1..25).last #=> devuelve el último objeto en el Range-->25
puts (1..25).max #=> devuelve el valor máximo en el Range->25
puts (1..25).min #=> devuelve el valor mínimo en el Range-->1


