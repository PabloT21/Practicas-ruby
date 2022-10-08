module Opuesto
    def oposite
        puts !self
        return !self
    end
end

class TrueClass
    extend Opuesto
end

class FalseClass 
    include Opuesto
end


false.oposite();