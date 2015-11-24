require 'spec_helper'
require 'bibliografia'

describe Bibliografia do
   context Libro do
     before :each do
        @libro1 = Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
     end
  
     it 'has a version number' do
        expect(Bibliografia::VERSION).not_to be nil
     end
  
   #  it 'does something useful' do
   #     expect(false).to eq(true)
   #  end
  
     it 'Debe existir uno o más autores' do
        expect(@libro1.autores).not_to be_empty
     end
  
     it 'Debe existir un título' do
        expect(@libro1.titulo).not_to be_empty
     end
  
     it 'Debe existir o no una serie' do
        expect(@libro1.serie).not_to be_empty
     end
  
     it 'Debe existir una editorial' do
        expect(@libro1.editorial).not_to be_empty
     end
  
     it 'Debe existir un número de edición' do
        expect(@libro1.edicion).not_to be_empty
     end
  
     it 'Debe existir una fecha de publicación' do
        expect(@libro1.fecha).not_to be_empty
     end
  
     it 'Debe existir uno o más números ISBN' do
        expect(@libro1.isbn).not_to be_empty
     end
     
     it 'Existe un método para obtener el listado de autores' do
        expect(@libro1.getAutores).to eq(["Dave Thomas", "Andy Hunt", "Chad Fowler"])
     end
     
     it 'Existe un método para obtener el título' do
        expect(@libro1.getTitulo).to eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide")
     end
     
     it 'Existe un método para obtener la serie' do
        expect(@libro1.getSerie).to eq("(The Facets of Ruby)")
     end
     
     it 'Existe un método para obtener la editorial' do
        expect(@libro1.getEditorial).to eq("Pragmatic Bookshelf")
     end
     
     it 'Existe un método para obtener el número de edición' do
        expect(@libro1.getEdicion).to eq("4 edition")
     end
     
     it 'Existe un método para obtener la fecha de publicación' do
        expect(@libro1.getFecha).to eq("(July 7, 2013)")
     end
     
     it 'Existe un método para obtener el listado de ISBN' do
        expect(@libro1.getISBN).to eq(["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
     end
     
     it 'Existe un método para obtener la referencia formateada' do
        expect(@libro1.to_s).to eq("[\"Dave Thomas\", \"Andy Hunt\", \"Chad Fowler\"], Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide, 4 edition. Pragmatic Bookshelf, (July 7, 2013)")  
     end
   end
   
   context Nodo do
      before :each do
        @Lista = Lista.new
        @Lista.unshift(1)
        @Lista.unshift(2)
      end

      it 'Debe existir un Nodo de la lista con sus datos y su siguiente' do
        expect(@Lista.head.dato != nil && @Lista.head.sig != nil)
      end
    
    
    
      it 'Debe existir un Nodo de la lista con sus datos y su anterior' do
        expect(@Lista.tail.dato != nil && @Lista.tail.ant != nil)
      end
   end
    context Lista do
        before :all do
            @refs = Lista.new
            @libro1 = Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
            @libro2 = Libro.new("Scott Chacon", "Pro Git 2009th Edition", "(Pro)", "Apress", "2009 edition", "(August 27, 2009)", ["ISBN-13: 978-1430218333", "ISBN-10: 1430218339"])
            @libro3 = Libro.new(["Dave Flanagan", "Yukihiro Matsumoto", "Chad Fowler"], "The Ruby Programming Language", "(Pro)", "O’Reilly Media", "1 edition", "(February 4, 2008)", ["ISBN-10: 0596516177", "ISBN-13: 978-0596516178"])
            @libro4 = Libro.new(["Dave Chelimsky,", "Dave Astels", "Bryan Helmkamp","Dan North","zach Dennis","Aslak Hellesoy"], "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "(The Facets of Ruby)", "Pragmatic Bookshelf", "1 edition", "(February 4, 2008)", ["ISBN-10: 1934356379", "ISBN-13: 978-1934356371"])
            @libro5 = Libro.new("Richard E", "Git Pocket Guide O’Reilly Media", "(The Facets of Ruby)", "Pragmatic Bookshelf", "1 edition", "(February 4, 2008)", ["ISBN-10: 1934356379", "ISBN-13: 978-1934356371"])
        end
        
        it 'Se puede insertar varios elementos' do
            @refs.push(@libro1)
            @refs.push(@libro2)
            @refs.push(@libro3)
            @refs.push(@libro4)
            @refs.push(@libro5)
        end
        
        it 'Existe un método para obtener la referencia formateada en una posicion de la lista' do
          expect(@refs.getNodoDato(0).to_s).to eq("[\"Dave Thomas\", \"Andy Hunt\", \"Chad Fowler\"], Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide, 4 edition. Pragmatic Bookshelf, (July 7, 2013)")  
        end
        
        it 'Debe existir una lista con su cabeza' do
            expect(@refs.head != nil)
        end
        
        it 'Debe existir una lista con su cola' do
            expect(@refs.tail != nil)
        end
        
        it 'herencia de object' do
            expect(@libro.is_a?(Object)).to eq(true)
        end
        
    end
    
    context Libro do
        before :all do
            @libro = Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        end
        it 'Es herencia de Referencia' do
            expect(@libro.is_a?(Referencia)).to eq(true)
        end
        
        it 'Es la clase Libro' do
            expect(@libro.class).to eq(Libro)
        end
        
        it 'Es Instancia de Libro' do
            expect(@libro.instance_of?(Libro)).to eq(true)
        end
    end
    
    context Publicaciones do
        before :all do
            @p = Publicaciones.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide",  "Pragmatic Bookshelf")
        end
        it 'Es herencia de Referencia' do
            expect(@p.is_a?(Referencia)).to eq(true)
        end
        
        it 'Es la clase Publicaciones' do
            expect(@p.class).to eq(Publicaciones)
        end
        
        it 'Es Instancia de Publicaciones' do
            expect(@p.instance_of?(Publicaciones)).to eq(true)
        end
    end
    
    context Revista do
        before :all do
            @p = Revista.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide",  "Pragmatic Bookshelf","volumen 1","numero 2",1)
        end
        it 'Es herencia de Referencia' do
            expect(@p.is_a?(Referencia)).to eq(true)
        end
            
        it 'Es herencia de Publicaciones' do
            expect(@p.is_a?(Publicaciones)).to eq(true)
        end
        
        
        
        it 'Es la clase Revista' do
            expect(@p.class).to eq(Revista)
        end
        
        it 'Es Instancia de Revista' do
            expect(@p.instance_of?(Revista)).to eq(true)
        end
    end
    
    context Periodico do
        before :all do
            @p = Periodico.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide",  "Pragmatic Bookshelf","volumen 1","numero 2",1)
        end
        it 'Es herencia de Referencia' do
            expect(@p.is_a?(Referencia)).to eq(true)
        end
            
        it 'Es herencia de Publicaciones' do
            expect(@p.is_a?(Publicaciones)).to eq(true)
        end
        
        it 'Es la clase Periodico' do
            expect(@p.class).to eq(Periodico)
        end
        
        it 'Es Instancia de Periodico' do
            expect(@p.instance_of?(Periodico)).to eq(true)
        end
    end
    
    context Documentos do
        before :all do
            @p = Documentos.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide",  "Pragmatic Bookshelf","http://wololo")
        end
        it 'Es herencia de Referencia' do
            expect(@p.is_a?(Referencia)).to eq(true)
        end
            
        it 'Es herencia de Publicaciones' do
            expect(@p.is_a?(Publicaciones)).to eq(true)
        end
        
        it 'Es la clase Documento' do
            expect(@p.class).to eq(Documentos)
        end
        
        it 'Es Instancia de Documento' do
            expect(@p.instance_of?(Documentos)).to eq(true)
        end
    end
    
    context Comparable do
        before :all do
            @p = Documentos.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide",  "Pragmatic Bookshelf","http://wololo")
            @p2 = Documentos.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide",  "Pragmatic Bookshelf","http://wololo")
        end
        
        it 'Son iguales' do
            expect(@p == @p2).to eq(true)
        end
        
    end
end
