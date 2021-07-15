=begin El usuario envía el valor correcto, devuelve "¡Lo conseguiste!".
El usuario envía un número más alto, devuelve "¡La suposición fue demasiado alta!".
El usuario envía un número más bajo, devuelve "¡La suposición fue demasiado baja!".
Si quieres desafiarte, intenta utilizar unless en lugar de los condicionales if.
=end



def adivina_numero valor #miusculas y separadaspor _
    number = 25
    unless !(valor == number)
        puts "valor: #{valor}. Resp: ¡Lo conseguiste!"
    else
        unless !(valor > number)
            puts "valor: #{valor}. Resp: ¡La suposición fue demasiado alta!"
        else
            puts "valor: #{valor}. Resp: ¡La suposición fue demasiado baja!"
        end
    end
end 



adivina_numero 23
adivina_numero 25
adivina_numero 27

    # tu código aquí

def adivina_numero valor
        number = 25
        # tu código aquí
        if valor == number
            puts "¡Lo conseguiste!"
        elsif valor > number
            puts "¡La suposición fue demasiado alta!"
        elsif valor < number
            puts "¡La suposición fue demasiado baja!"
        end 
    end 
    
    adivina_numero(26)


    