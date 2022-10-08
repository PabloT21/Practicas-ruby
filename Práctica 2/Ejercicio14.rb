VALUE = 'global'
module A
    VALUE = 'A'
    
    class B
        VALUE = 'B'
        def self.value
            VALUE
        end
        def value
            'iB'
        end
    end
    
    def self.value
        VALUE
    end
end


class C
    class D
        VALUE = 'D'
        def self.value
            VALUE
        end
    end
    module E
        def self.value
            VALUE
        end
    end
    
    
    def self.value
        VALUE
    end
    end

class F < C
    VALUE = 'F'
end



#Inciso A
puts A.value #A
puts A::B.value #B 
puts C::D.value #D 
puts C::E.value #global
puts F.value  #global

#Inciso B
puts A::value #A
puts A.new.value #Error , A es un modulo por lo que no se puede instanciar
puts B.value #Error, No puede encontrar la clase porque no declare dentro de que namespace se encuentra
puts C::D.value #D
puts C.value #Global
puts F.superclass.value #Global