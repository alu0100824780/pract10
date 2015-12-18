
# Node (:value, :next, :back)

module LinkedList

	class List

	      include Enumerable
 
              def each
               aux = @First
               while aux != nil
		yield aux.value
		aux = aux.next
               end
              end	
		
	      attr_accessor :First, :Last   # First = Tail || Last = Head
	      attr_reader :Size
	   def initialize
 	      @Last = @First = nil
              @Size = 0
           end

	   def push_back(v)
              if(@Size == 0)
		  @Last = @First = Node.new(v,nil,nil)
              else
                  @Last.next = Node.new(v,nil,@Last)
		  @Last = @Last.next
              end
              @Size = @Size + 1 
           end

	   def push_front(v)
	      if(@Size == 0)
		   @Last = @First = Node.new(v,nil,nil)
	      else
		   @First = Node.new(v,@First, nil)
	      end
	      @Size = @Size + 1
	   end

	   def pop_front
              if(@Size == 1)
		 aux = @First
		 @First = @Last = nil
	      else
		 aux = @First
		 @First = @First.next 
              end
                @Size = @Size - 1
		 aux
	   end

	   
           def pop_back
		if(@Size == 1)
		   aux = @Last
		   @First = @Last = nil
		else
	           aux = @Last
		   @Last = @Last.back
		   @Last.next = nil
                end
                @Size = @Size - 1
                aux
           end


           def at(i)
              aux = @First
              j = 0
              while(j < i) do
		aux = aux.next
                j = j + 1
              end
              aux
           end

	   def [] (i)
	      at(i)
	   end

	   
           def empty
	      @Size == 0
	   end

           def to_s
               aux = []
               aux = sort
#               if (aux.each
               aux2 = ''
               for i in 0..aux.size-1
                  aux2 += aux[i].apa
               end
               aux2
           end

		
        end
  # Your code goes here...
end


