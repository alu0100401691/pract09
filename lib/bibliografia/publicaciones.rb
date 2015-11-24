

class Publicaciones < Referencia
    
        attr_reader  :nombre
      
        def initialize(autores,titulo,nombre)
              super(autores,titulo)
              @nombre = nombre
     
        end
        def ==(other)
            if (super(other))
                for i in (0..nombre.length)
                    if (nombre[i] != other.nombre[i])
                        return false
                    end
                end
                return true
            end
            false
            
        
        end
        
        def getNombre
            return @nombre
        end
        
        def to_s
            out = super.to_s + "#{@nombre}"  + ", "
            return out
        end
        
end