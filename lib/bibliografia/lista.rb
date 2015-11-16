
Nodo = Struct.new(:dato, :sig, :ant) do
    
    def initialize(dato, sig, ant)
        @dato = dato
        @sig = sig
        @ant = ant
    end
    
    def to_s
        "#{@dato}"
    end
    
    def getDato
        @dato
    end
    
end

class Lista
    attr_accessor :tail, :head
    
    def initialize()
        @head = nil;
        @tail = nil;
    end
    
    #Metodo para insertar por delante
    def unshift(dato)
        primero = @head
        nodo = Nodo.new(dato,primero,nil)
        if @head == nil
            @tail = nodo
        else
            primero.ant = nodo
        end
        @head = nodo

    end
    #Metodo para insertar por detras
    def push(dato)
        ultimo = @tail
        nodo = Nodo.new(dato,nil,ultimo)
        if @tail == nil
            @head = nodo
        else
            ultimo.sig = nodo;
        end
        @tail = nodo
    end
    #Devuelve el numero de elemnentos de la lista
    def length
        if @head == nil
            num = 0
        else
            last = @head
            num = 1
            while last.sig != nil
                last = last.sig
                num += 1
            end
        end
        num
    end
    
    def getNodoDato(index)
        item = @head
        for i in (0..index -1)
            item = item.sig
        end
        return item.getDato
    end
    
    def visualiza
        last = @head
       
        while last.sig != nil
            puts last.to_s
            last = last.sig
        end
        
        puts last.to_s
        
    end
end

#l = Lista.new
#l.unshift(2)
#l.unshift(3)
#l.push(4)
#l.push(5)
#l.push(2)
#l.push(3)
#l.push(6)
#puts l.length
#l.visualiza

#puts getNodoDato(1)

