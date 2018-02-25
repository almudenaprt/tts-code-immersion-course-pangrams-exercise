# Método a través del cual comprobaremos si la frase que introduce el usuario por teclado es un pangrama o no
def is_pangram?(sentence)
    
    # Pasamos la frase a minúsculas con el método .downcase y sustituímos las vocales con tildes por vocales sin tildes con el método .gsub
    sentence = sentence.downcase
    sentence = sentence.gsub(/[áéíóú]/, "á" => "a", "é" => "e", "í" => "i", "ó" => "o", "ú" => "u")
   
    # Definimos una nueva variable cuyo valor será true siempre que no haya al menos una letra que no se incluya en la frase
    pangrama = true
   
    # Estructura de control que itera sobre cada letra de la frase
    ("a".."z").each do |letra|
        # Bucle que convierte a la variable "pangrama" en false cuando la frase no incluya todas las letras definidas en el rango anterior
        unless sentence.include? letra
            pangrama = false
        end
    end
    pangrama  # El método acaba devolviendo el valor de la variable "pangrama"
end


# Pedimos al usuario que introduzca su frase y la guardamos dentro de la variable "frase"
print "Introduce tu frase aquí: "

frase = gets.chomp

# Estructura de control que mostrará por pantalla si es un pangrama o no en función de la frase que haya introducido el usuario
if is_pangram?(frase)
    puts "Esta frase es un pangrama"
else
    puts "Esta frase no es un pangrama"
end
