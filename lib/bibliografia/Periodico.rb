

class Periodico < Publicaciones
    
        attr_reader :numero, :pagina
      
        def initialize(autores,titulo,nombre,volumen,numero,pagina)
              super(autores,titulo,nombre)
              @numero = numero
              @pagina = pagina
     
        end

        def getNumero
            return @numero
        end
        
        def getPagina
            return @pagina
        end
        
        def to_s
            out = super.to_s + "#{@numero}"  + ", "  + "#{@pagina}" 
            return out
        end
        
end