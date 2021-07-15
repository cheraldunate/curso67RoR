

#Iteradores
#Los Iteradores son extremadamente importantes para Ruby. 
#Revise cada una de estas funciones a través de la documentación oficial de Ruby 
#y cree un archivo ruby donde las pueda revisar más adelante. 
#Esto se incluirá en una de las actividades más adelante. 

#.any? { |obj| block } => true or false
     puts ["ant", "bear", "cat"].any? { |word| word.length >= 3 } # => true

#.each => invoca el bloque una vez para cada elemento en ruby self, 
#enviándo este elemento como parámetro al bloque. el each recorre elemento por elemento
    puts ["ant", "bear", "cat"].each { |word| print word, "\n" } # => ant
                                                                    #bear
                                                                    #cat

#.collect { |obj| block } => devuelve un nuevo arreglo, con los resultados después 
#de haber ejecutado el bloque una vez para cada elemento en enum
    puts (1..4).collect { |i| i*i }.to_s # => [1, 4, 9, 16]
     (1..4).collect { "cat" } #=> ["cat", "cat", "cat", "cat"]

#.detect/.find => devuelve el primer valor para el que el bloque sea verdadero.
    puts (1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
    puts (1..10).find { |i| i %5 == 0 and i % 7 == 0 } # => nil
    
    puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35
    puts (1..100).find { |i| i %5 == 0 and i % 7 == 0 } # => 35

#.find_all { |obj| block } ó 
#.select { |obj| block } => devuelve un arreglo que contiene los elementos de enum para los que el bloque sea verdadero.
    puts (1..10).find_all { |i| i % 3 == 0 }.to_s # => [3, 6, 9]
    puts (1..10).select { |i| i % 3 == 0 }.to_s # => [3,6,9]


    #.reject { |obj| block } => lo opuesto de find_all, 
    #numeros que no cumplen con la condicion
    puts (1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]
ej: puts (1..255).reject { |i| i % 2 == 0 } # => [1, 3, 5, 7, 11...255]

#.upto(limit) => recorre el bloque hasta alcanzar el número límite
     5.upto(10) { |i| print i, " " } # => 5 6 7 8 9 10
     1.upto(255) {|i| print i, " "} # => 1..255
     "a".upto("j") {|i| print i, " "} # => a,b,c,d,e,f,g,h,i,j