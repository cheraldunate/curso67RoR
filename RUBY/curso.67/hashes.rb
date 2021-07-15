# Métodos Útiles
# Vamos, intenta los siguientes métodos:
# .delete(clave) => elimina y devuelve un valor asociado con la clave.
# ejemplo ruby h = {:nombre => "Coding", :apellido => "Dojo"} h.delete(:apellido) print h # => {:nombre => "Coding"}
# .empty? => devuelve true si el hash no contiene pares de clave-valor
# .has_key?(clave) => true ó  false
# .has_value?(valor) => true ó false

h = {:nombre => "Coding", :apellido => "Dojo"}
puts "Definimos el hash: #{h}"
puts "Existe alguna llave 'nombre': #{h.has_key?(:nombre)}"
puts "Existe algún valor 'Coding': #{h.has_value?("Coding")}"
puts "Existe alguna llave 'apellido': #{h.has_key?(:apellido)}"
puts "Existe algún valor 'Dojo': #{h.has_value?("Dojo")}"
puts "El hash está vacio: #{h.empty?}"
puts "\n"

h.delete(:apellido)
puts "Eliminamos la llave 'apellido' del hash: #{h}"
puts "Existe alguna llave 'nombre': #{h.has_key?(:nombre)}"
puts "Existe algún valor 'Coding': #{h.has_value?("Coding")}"
puts "Existe alguna llave 'apellido': #{h.has_key?(:apellido)}"
puts "Existe algún valor 'Dojo': #{h.has_value?("Dojo")}"
puts "El hash está vacio: #{h.empty?}"
puts "\n"

h.delete(:nombre)
puts "Eliminamos la llave 'nombre' del hash: #{h}"
puts "Existe alguna llave 'nombre': #{h.has_key?(:nombre)}"
puts "Existe algún valor 'Coding': #{h.has_value?("Coding")}"
puts "Existe alguna llave 'apellido': #{h.has_key?(:apellido)}"
puts "Existe algún valor 'Dojo': #{h.has_value?("Dojo")}"
puts "El hash está vacio: #{h.empty?}"
puts "\n"
