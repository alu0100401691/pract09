    class Referencia
        attr_reader :autores, :titulo, :serie, :editorial, :numero, :fecha, :isbn
      
        def initialize(autores,titulo,serie,edito,numero,fecha,isbn)
              @autores = autores
              @titulo = titulo
              @serie = serie
              @editorial = editorial
              @numero = numero
              @fecha = fecha
              @isbn = isbn
        end
    end