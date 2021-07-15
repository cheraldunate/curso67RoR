#no se ejecutara esta linea, es para comentario cort

=begin es para comentario largo
y para terminar
=end 

puts "hello"
puts "coding"
puts "dojo"

x = 5
y = 10
z = x+y

puts z

#mayusculas que que se vea en consola
BEGIN{
    puts "this is in the beginsiempre con mayusculaigual que end block"

}
END {
    puts "this is in the end block"
}


Puts “2+1 es #{2+1}” #interpreta variable
.To_s —>convierte a texto
Ej:
Puts “24 + 8 es” (24 + 8).to_s

.split
Ej: puts “cher, al, r, a2”.split(“,”)
—> los separa o divide hacia abajado después de cada ,

Variable = “casa”
variable[0] = “k”
Puts “variable = #{variable}”
—> variable = Kasa

Age = 22
If age >=21
  Puts “bienvenid a la fiesta.”
  Else
 Puts “todavia no.”
End

Nombre =15.  #el resto de la división por 15 es o o no.
If number %3 ==0 && number %5 == 0
Puts “fizz buzz”
Elsif number % 3 == 0
Puts “fizz”
Elsif number % 5 == 0
Puts “buzz”
End

Llamado a la función:
Def hola_mundo
        Puts “hola hola”
End
hola_mundo# llamado a la función