

class Referencia
    
        attr_reader :autores, :titulo
      
        def initialize(autores,titulo)
              @autores = autores
              @titulo = titulo
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