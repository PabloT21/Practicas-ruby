# Para que sirven las siguientes clases:

# ArgumentError: 
##Se levanta cuando llamas a un método ##con parametros incorrectos.
##Un argumento se puede considerar incorrecto por muchas razónes:
##1) Cantidad incorrecta de argumentos --> ArgumentError: wrong number of arguments
##2)  Parametros no aceptables para esa función

# IOError:
## Este error se levanta cuando una operacion de In / Out falla, puede ser abrir un archivo , etc. 
## Ejemplo:
## File.open("/etc/hosts") {|f| f << "example"}
##  #=> IOError: not opened for writing


# NameError:
## Se levanta cuando referencias una constante o variable que no esta definida en el contexto actual. Una constante puede ser un modulo, clase  o una CONSTANT_VARIABLE

# NotImplementedError:
## Se levanta cuando una funcion no esta implementada en la plataforma actual,  puede ser en el sistema operativo por ejemplo

# RuntimeError:
## Es una clase de error generica que se intenta levantar una operacion invalida. 
## Si usamos la funcion RAISE sin indicar una clase, se levanta la excepcion generica RuntimeError
## Ejemplo: raise "Ouch"

# StandardError:
## Los tipos de error mas comunes son subclases de StandardError .
## La sentencia "rescue" sin una excepcion explicita, va a recuperar todos los standardErrors

# StopIteration:
## Cuando se hace un raise de esta excepción, se corta el loop o la iteración. 
## Ejemplo:
###loop do  
###  puts "Hello"
###  raise StopIteration
###  puts "World"
###end
###puts "Done!"

###produces:

###Hello
###Done!


# SystemExit:

# SystemStackError:

# TypeError:

# ZeroDivisionError: