

class Documentos < Publicaciones
    
        attr_reader :URL
      
        def initialize(autores,titulo,nombre,url)
              super(autores,titulo,nombre)
              @URL = url
     
        end

        def getURL
            return @url
        end
        
        
        def to_s
            out = super.to_s + "#{@url}" 
            return out
        end
        
end