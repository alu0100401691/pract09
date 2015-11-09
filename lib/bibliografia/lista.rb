
Nodo = Struct.new(:dato, :sig) do
    
    def initialize(dato, sig)
        @dato = dato
        @sig = sig
    end
    
    def getSig
        return @sig
    end
    
    def getDato
        return @dato
    end
    
    def next_(sig)
        @sig = sig
    end
    
end

class Lista
    attr_accessor :head
    
    def initialize()
        @head = nil;
    end
    
    def unshift(dato)
        primero = @head
        @head = Nodo.new(dato,primero)
    end
    def push(dato)
        last = @head
        if last!= nil
            while last.getSig != nil
                last = last.getSig
            end
            last.next_(Nodo.new(dato,nil))
        else
            @head = Nodo.new(dato,nil)
        end
    end
    
    def length
        if @head == nil
            num = 0
        else
            last = @head
            num = 1
            while last.getSig != nil
                last = last.getSig
                num += 1
            end
        end
        num
    end
            
end

l = Lista.new
l.push(2)
l.push(3)
puts l.length
