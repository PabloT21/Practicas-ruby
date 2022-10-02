class Documento
    attr_accessor :creador, :contenido, :publico, :borrado
    def initialize(usuario, publico = true, contenido = '')
    self.creador = usuario
    self.publico = publico
    self.contenido = contenido
    self.borrado = false
    end
    def borrar
    self.borrado = true
    end
    def puede_ser_visto_por?(usuario)
    usuario.puede_ver? self
    end
    def puede_ser_modificado_por?(usuario)
    usuario.puede_modificar? self
    end
    def puede_ser_borrado_por?(usuario)
    usuario.puede_borrar? self
    end
end

class Usuario 
    attr_accessor :user, :email, :pass
    def initialize(nombre, email, pass)
        self.user = nombre 
        self.email = email
        self.pass = pass
    end
  
    def rol 
      return "Usuario normal"
    end
    def puede_borrar?
         false
    end

    def puede_modificar?
         false
    end

    def puede_ver?
         false
    end
  
    def to_s
         "Mi nombre es " + self.user + ", mi email:" + self.email + " y mi rol es " + self.rol
    end
end

class Lector < Usuario
    def puede_ver?(document)
         document.publico
    end
    def rol
         "Lector"
    end
end

class Redactor < Lector
    def rol 
       "Redactor"
    end
    def puede_modificar?(document)
        if(document.creador == self) then 
             true 
        else 
             false
        end
    end
 

end  


class Director < Redactor 
    def rol 
      return "Director"
    end
    def puede_modificar?(document)
         !document.borrado;
    end

    def puede_ver?(document)
         !document.borrado;
    end

end    

class Administrador < Director
   def rol 
       "Administrador"
    end
    def puede_borrar?
        true
    end
end
 


user = Administrador.new("Pablo","pablo@gmail.com","hola");
doc= Documento.new(user,true);
puts user.to_s
