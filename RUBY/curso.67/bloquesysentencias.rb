def test 
    puts "Estas en el metodo" 
    yield 
    puts "Estas de vuelta en el metodo" 
    yield 
  end 
  test { puts "Estas en el bloque" }
  
  ---> "Estas en el metodo"
  "Estas en el bloque" 
  "Estas de vuelta en el metodo" 
  "Estas en el bloque"

  #pasando parametros
  def test 
    yield 5 
    puts "Estas en el metodo del test" 
    yield 100 
  end 
  test { |i| puts "Estas en el bloque #{i}" }
  --> "Estas en el bloque 5"
"Estas en el metodo del test"
"Estas en el bloque 100"
=end

  def square(num)
    puts "num is#(num)"

    x = yield(num)
    puts "x is value of#(x)"

    y = yield(num)*x
    puts "y is value of#(y)"
  end
  square(5) {|i| i*i}