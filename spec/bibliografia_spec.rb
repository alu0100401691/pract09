require 'spec_helper'
require 'bibliografia'

describe Bibliografia do
   before :each do
      @libro1 = Bibliografia::Referencia.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
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
end
