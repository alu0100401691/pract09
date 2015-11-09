
Nodo = Struct.new(:dato, :sig) do
    
    def initialize(dato, sig)
        @dato = dato
        @sgi = sig
    end
    
end

class Lista
    attr_accessor :head
    
    def initialize()
        @head = null;
    end
end