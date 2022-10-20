class Palabra
    @Palabra
    def initialize(str)
        string= str
      end

    def gritando
        puts self.string.upcase
    end

    def consonantes
        return self.palabra.delete("aeiou").split("").uniq.sort
    end

    def longitud
        puts self.string.lenght
end