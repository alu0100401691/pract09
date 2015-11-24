

class Libro < Referencia
    
        attr_reader  :serie, :editorial, :edicion, :fecha, :isbn
      
        def initialize(autores,titulo,serie = nil,editorial,edicion,fecha,isbn)
              super(autores,titulo)
              @serie = serie
              @editorial = editorial
              @edicion = edicion
              @fecha = fecha
              @isbn = isbn
        end
        
        def ==(other)
            if (super(other))
                for i in (0..fecha.length)
                    if (fecha[i] != other.fecha[i])
                        return false
                    end
                end
                return true
            end
            false
        
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
            out = super.to_s + "#{@edicion}" + ". " + "#{@editorial}" + ", " + "#{@fecha}"
            return out
        end
        
end