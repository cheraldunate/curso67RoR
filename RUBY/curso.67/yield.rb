#yield= vuelve y retorna
def algo
    puts "Estas en el metodo" 
    yield 
    puts "Estas de vuelta en el metodo" 
    yield 
  end 
  algo { puts "Estas en el bloque" }
  
  #---> yield es reemplazado por "estas en el bloque"


def gato 
  yield 5 
  puts "Estas en el metodo del test" 
  yield 100 
end 
gato { |i| puts "Estas en el bloque #{i}" }


