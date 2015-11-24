

class Referencia
        include Comparable
    
        attr_accessor :autores, :titulo
      
        def initialize(autores,titulo)
              @autores = autores
              @titulo = titulo
        end
        
        def <=>(other)
            self.titulo <=> other.titulo
        end
        
        def ==(other)
            
            for i in (0..titulo.length)
                if (titulo[i] != other.titulo[i])
                    return false
                end
            end
            for i in (0..autores.length)
                if (autores[i] != other.autores[i])
                    return false
                end
            end
            
            true
        end
        
        def getAutores
            return @autores
        end
        def getTitulo
            return @titulo
        end
        
        def to_s
         "#{@autores}" + ", " + "#{@titulo}" + ", "
        end
        
end