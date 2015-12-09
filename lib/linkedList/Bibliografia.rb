require 'date'

module Bibliografia
    class Bibliografia

	Author = Struct.new(:surnames,:initial)

	include Comparable

	def <=> (other)
             print "vamos a comparar\n"
             return nil unless !other.is_a? Bibliografia::Bibliografia
             aux = @Author[0].surnames <=> other.Author[0].surnames
             puts aux
	     if( aux == 0)
               if @Author.size == other.Author.size
                for i in 1..@Author.size-1 do
			aux = @Author[i].surnames <=> other.Author[i].surnames
                end
	       end
                if aux == 0
			aux = @Fecha_Publication <=> other.Fecha_Publication
                end
	     end
             aux
	end	
	
        attr_reader :Author, :Title, :Serie, :Editorial, :Edicion
        attr_reader :Fecha_Publication
        def initialize 
            @Author = ["Sin autores"]
            @Title = "Sin titulo"
            @Serie = nil
            @Editorial = "Editorial sin definir"
            @Edicion = 0
            @Fecha_Publication = Date.new(1990,1,1)
        end
        
	#El nombre se pasa normal es decir: Nombre Apellido1 Apellido2..
        def add_author(name)
                aux = name.split
                autor = Author.new(aux[1..-1].join(" "),aux[0][0].capitalize)
            if(@Author[0] == "Sin autores")
                @Author[0] = autor
            else
                @Author << autor 
            end
        end
        
        def set_title(name)
            @Title = name
        end
        
        def set_serie(name)
            @Serie = name
        end
        
        def set_editorial(name)
            @Editorial = name
        end
        
        def set_edition(num)
            @Edicion = num
        end
        
        def set_publication(d,m,a)
            @Fecha_Publication = Date.new(a,m,d)
        end

        def get_APA_authors
            a = ''
 	    for i in 0..@Author.size-1
 	    	a += @Author[i].surnames + ", " + @Author[i].initial + ". "
 	    end
            a
        end


	def get_APA_date
	    "(" + @Fecha_Publication.to_s + ")"
        end

	def get_APA
	    a = get_APA_authors
            a += get_APA_date
            a += "\n"
            a
	end

        
        
       # def get_formato
       #     a = @Author.join(", ") +"\n"+@Title.to_s+"\n"+@Serie.to_s+
       #     "; "+@Edicion.to_s+" edition ("+@Fecha_Publication.to_s+")\n"
       #     for i in 0..@ISBN.size-1 do
       #         a += @ISBN[i] + "\n"
       #     end
#	    a += "\n\n"
#            a
#        end
   end
end
