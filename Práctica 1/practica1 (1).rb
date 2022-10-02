# ----------------------------------------- |
#Creación de objetos basicos

MiString= "Puts imprime"

vectorVacio = []

:MiSimbolo

hash = { 'Nombre' => 'Pablo', 'Apellido' => 'Terrone'}

puts MiString

# ----------------------------------------- |
# Ejercicio 2, PARSE de cualquier tipo a String

intPrueba= 1922

puts intPrueba.to_s + " Es un año" #Sin el to_s, tira error

# ----------------------------------------- |
# Ejercicio 3, PARSE de String a Symbol

MiString.to_sym

# ----------------------------------------- |
# Ejercicio 4, que imprime?

puts 'TTPS Ruby'.object_id == 'TTPS Ruby'.object_id

#Ejercicio 5

# ----------------------------------------- |
#Ejercicio 6

def hora_palabras(hora=2,minuto=5)
    case minuto
     when 0..10
       str = convertirHora(hora) + hora.to_s + " en punto"
    when 11..20
       str = convertirHora(hora) + hora.to_s + " y cuarto"
    when 21..34
       str = convertirHora(hora) + hora.to_s + " y media"
    when 35..44
       str = convertirHora(hora) + hora.to_s + " menos veinticinco"
    when 45..55
       str = convertirHora(hora) + hora.to_s + " menos cuarto"
    when 56..59
       auxHora= convertirHora(hora)
       str = "Casi" + auxHora.downcase + hora.to_s
    end
    puts str
  end
  def convertirHora(hora)
      case hora
      when 1
        return " Es la "
      when 2..12
        return " Son las "
      end
  end

hora_palabras(1,59)

# ----------------------------------------- |
#Ejercicio 7 y 8
=begin
def contar(string,palabra)
   return string.scan(/palabra).count
 end

 def contar(string,palabra)
   return string.scan(/\d/{palabra}/\d\/).count
 end
 
# ----------------------------------------- |
#Ejercicio 9 - Metodos para strings

stringPrueba= "Hola como  estas"

inverso = stringPrueba.reverse

sinEspacios = stringPrueba.delete(' ')

puts inverso

ascii = stringPrueba.chars.map{|i| i.ord}

cambiarPorNumeros = stringPrueba.chars.map{
   #No lo pude hacer andar todavía
   |i|
   if(i == "a") 
     1
   end
   if(i.downcase == "e") 
     return 2
   end
   if(i.downcase == "i") 
     return 3
   end
   if(i.downcase == "o") 
     return 4
   end
   if(i.downcase == "u") 
     return 5
   end
 
 }

# ----------------------------------------- |
#Ejercicio 10 y 11 - Que imprime?
[:upcase, :downcase, :capitalize, :swapcase].map do |meth|
  "TTPS Ruby".send(meth)
  end
  
# Me imprimio lo siguiente:
# TTPS RUBY
# ttps ruby
# Ttps ruby
# ttps rUBY
# El método send, envia un mensaje a un objeto, no importa si el mensaje es privado o no
# El método public send, solo envia mensajes públicos.
# Con send, podria hasta settear valores como object.send()


# ----------------------------------------- |
#Ejercicio 12
def longitud(array)
  return array.collect{|item| item.length}
end

#------------------------------------------ |
#Ejercicio 13

def listar(hash)
  str = hash.each do 
    |key, array| str+= "#{key}-----" 
    str+=array 
  end


=end 
