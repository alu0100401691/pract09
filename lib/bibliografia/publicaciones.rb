

class Publicaciones < Referencia
    
        attr_reader  :nombre
      
        def initialize(autores,titulo,nombre)
              super(autores,titulo)
              @nombre = nombre
     
        end
        
        def getNombre
            return @nombre
        end
        
        def to_s
            out = super.to_s + "#{@nombre}"  + ", "
            return out
        end
        
end