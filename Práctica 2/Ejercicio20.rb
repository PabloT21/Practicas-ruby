=begin

20. 
Extendé la clase Array con el método randomly que funcione de la siguiente manera:
• Si recibe un bloque, debe invocar ese bloque con cada uno de los elementos del arreglo
en orden aleatorio, sin repetir los elementos sobre los que se lo invoca.
• Si no recibe un bloque, debe devolver un enumerador que va arrojando, de a uno, los ele‑
mentos del arreglo en orden aleatorio.


=end
class Array
def randomly()
    boolean_array = Array.new(self.size)
    diml =0
    if block_given?
        while (diml != self.size) do
            i = Random.rand(self.size)
            if (boolean_array[i] != true ) 
                yield (self[i])
                boolean_array[i] = true
                diml= diml+1
            end
        end
    else
      enum = Enumerator.new do 
      while (diml != self.size) do
        i = Random.rand(self.size)
        if (boolean_array[i] != true ) 
          puts self[i]
          boolean_array[i] = true
          diml= diml+1
        end
      end
      return enum
    end
end
end
end

arr = [1,2,3,4] 
arr.randomly

puts "-------------"
arr.randomly{|elem| elem=elem *2 ; puts elem}