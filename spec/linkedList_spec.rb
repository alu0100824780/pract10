require 'spec_helper'



describe "Practica 10" do
    # Apartado 1
    context "APA Format" do
       it "have correct name and surname format" do
         @b2 = Bibliografia::Book.new
	 @b2.add_author("Marcelo Raul Perez Vazquez Pereyra Jamon")
	 expect(@b2.get_APA_authors).to eq "Raul Perez Vazquez Pereyra Jamon, M. "
       end	  
     end



     context "Sorted list" do
       # Apartado 2 & Apartado 3
       it "have sorted list by first author surname" do
	     @l = LinkedList::List.new
	     @b1 = Bibliografia::Book.new
             @b1.add_author("Pablo Martinez Rodriguez")
	     @b2 = Bibliografia::Book.new
	     @b2.add_author("Marta Caceres Benitez")
             @b3 = Bibliografia::Book.new
             @b3.add_author("Gabriel Reveron Hernandez")
             @b3.add_author("Rudolf Cicko")
             @b3.set_publication(9,12,2015)
	     @b4 = Bibliografia::Book.new
	     @b4.add_author("Gabriel Reveron Hernandez")
	     @b4.set_publication(23,8,1994)
             
             @l.push_back(@b1)
             @l.push_back(@b2)
             @l.push_back(@b3)
             @l.push_back(@b4)

             puts "\n" + @l.to_s
      
       end

       # Apartado 6
       it "have & symbol between author names" do
	   @b = Bibliografia::Book.new
	   @b.add_author("Rudolf Cicko")
           @b.add_author("Eleazar Diaz")
           expect(@b.get_APA_authors).to eq "Cicko, R. & Diaz, E. "
       end


    end
	
end


