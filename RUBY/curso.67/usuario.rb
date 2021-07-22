=begin
Variables
Variable Local
Es una variable regular en Ruby.

Variable de Instancia
Comienza con @ y está disponible para las instancias de la clase.

Variable de Clase
Comienza con @@ y esta disponible solo para la clase misma.

Variable Global
Comienza con $. Evite usar esto, si es posible, ya que está disponible en todas partes.
=end

#-------------------------------------------

class Usuario
    # Crear metodos de instancia que obtienen y establecen los atributos nombre y apellido
    attr_accessor :nombre, :apellido
    
    def initialize(f_nombre, l_apellido) #FUNCION CON VALORES, CONSTRUCTOR
        @nombre = f_nombre   #@ESVARIABLE DE INSTANCIA
        @apellido = l_apellido
    end
    
    def nombre_completo #metodo
        puts "Yo soy #{@nombre} #{@apellido}"
    end
    
    def saludar    #metodo
      puts "¡Hola!"
    end
  end
  u = Usuario.new("John", "Doe") 
  #ESTOY CREANDO UN NUEVO OBJETO QUE LO ALMACENO EN OTRO OBJETO LLAMADO U
  u.nombre_completo # => "Yo soy John Doe"
  u.saludar # => "¡Hola!"
#----------------------------------------------------------
#METODO DE LA CLASE: TIENE UN SELF Y PUNTO
class Usuario
    # codigo anterior removido para resumir
    
    def self.foo
      puts "Este es un metodo de clase"
    end
  end
  u = Usuario.new("Jane", "Doe")
  u.foo # => NoMethodError: undefined method `foo'
  User.foo # => "Este es un metodo de clase"
#----------------------------------------------------------
  #EJEMEPLO DE UNA CLASE
  class CodingDojo 
    @@no_of_branches = 0
    def initialize(id, name, address) 
      @branch_id = id 
      @branch_name = name 
      @branch_address = address 
      @@no_of_branches += 1 
      puts "Created branch #{@@no_of_branches}"
    end
    def hello 
      puts "Hello CodingDojo!"
    end
    def display_all
      puts "Branch ID: #{@branch_id}"
      puts "Branch Name: #{@branch_name}" 
      puts "Branch Address: #{@branch_address}"
    end 
  end 
  # Ahora use la clase anterior para crear objetosnow using above class to create objects 
  branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA") 
  branch.display_all 
  branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA") 
  branch2.display_all