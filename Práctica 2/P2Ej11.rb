class GenericFactory
    def self.create(*args)
      new(*args)
    end
    def initialize(*args)
      raise NotImplementedError
    end
  end
  
  class Persona < GenericFactory
    def initialize(*args)
      print("Mi nombre es #{args[0]} y mi apellido es #{args[1]}")
    end
  end
  
  
  p=Persona.create("Pablo","Ejemplo")