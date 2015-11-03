require "bibliografia/version"

module Bibliografia
    
    class Referencia
    
        attr_reader :autores, :titulo, :serie, :editorial, :edicion, :fecha, :isbn
      
        def initialize(autores,titulo,serie = "",editorial,edicion,fecha,isbn)
              @autores = autores
              @titulo = titulo
              @serie = serie
              @editorial = editorial
              @edicion = edicion
              @fecha = fecha
              @isbn = isbn
        end
    end
end
