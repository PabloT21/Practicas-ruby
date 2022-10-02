module Reverso
    def di_tcejbo()
        puts(self.object_id.to_s.reverse)
    end

    def ssalc()
        puts(self.class.to_s.reverse)
    end
end

class Clase
    include Reverso
    def initialize()
        puts("Iniciateeee")
    end
end

cl = Clase.new
cl.di_tcejbo
cl.ssalc