require "bibliografia/version"

module Bibliografia
    
    class Referencia
    
        attr_reader :autores, :titulo, :serie, :editorial, :edicion, :fecha, :isbn
      
        def initialize(autores,titulo,serie = nil,editorial,edicion,fecha,isbn)
              @autores = autores
              @titulo = titulo
              @serie = serie
              @editorial = editorial
              @edicion = edicion
              @fecha = fecha
              @isbn = isbn
        end
        
        def getAutores
            return @autores
        end
        def getTitulo
            return @titulo
        end
        def getSerie
            return @serie
        end
        def getEditorial
            return @editorial
        end
        def getEdicion
            return @edicion
        end
        def getFecha
            return @fecha
        end
        
        def getISBN
            return @isbn
        end
        
        def to_s
            out = "#{@autores}" + ", " + "#{@titulo}" + ", " + "#{@edicion}" + ". " + "#{@editorial}" + ", " + "#{@fecha}"
            return out
        end
        
    end
end
