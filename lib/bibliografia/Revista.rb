

class Revista < Publicaciones
    
        attr_reader  :volumen, :numero, :pagina
      
        def initialize(autores,titulo,nombre,volumen,numero,pagina)
              super(autores,titulo,nombre)
              @volumen = volumen
              @numero = numero
              @pagina = pagina
     
        end
        
        def getVolumen
            return @volumen
        end
        
        def getNumero
            return @numero
        end
        def getPagina
            return @pagina
        end
        
        def to_s
            out = super.to_s + "#{@volumen}"  + ", "  + "#{@numero}"  + ", "  + "#{@pagina}" 
            return out
        end
        
end