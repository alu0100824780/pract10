require 'spec_helper'


describe LinkedList do
  it 'has a version number' do
    expect(LinkedList::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(true).to eq(true)
  end
end



describe LinkedList::List do
  before :all do
    @n = Node.new(10,nil)
    @l = LinkedList::List.new
  end


  	it 'Exist a node of the list with it data and next reference' do
	      expect(@n.value == 10 && @n.next == nil)
	end
	
	it  'Can create a list' do
	      expect(LinkedList::List.new).not_to eq(nil)
	end


	context 'Manipulate data' do
  		it 'Can get first element of the list' do
		     @l.push_back(30)
		     expect(@l.First.value).to eq(30)
		end

		it 'Can insert an element into the list' do
		     @l.push_back(40)
		     expect(@l.Last.value).to eq(40)
		end

  
		it 'Can insert more than one element' do
		    @l.push_back(50) 
		    @l.push_back(60)
		    expect(@l.Size).to eq(4)
		end

                it 'can access to diferent positions in the list' do
		    expect(@l[0].value).to eq(30)
                    expect(@l[1].value).to eq(40)
                    expect(@l[2].value).to eq(50)
                    expect(@l[3].value).to eq(60)
                end

	
        end

	context 'Double linked list' do
		it 'know about behind object' do	
		     expect(@l.Last.back.back.value).to eq 40
		end

		it 'can put node at first position' do
		      @l.push_front(70)
                      expect(@l.First.value).to eq 70
		end
        end
end



describe Bibliografia::Book do
	before :all  do
		@b = Bibliografia::Book.new
        end

	it "exists a book" do
            expect(@b.is_a?Bibliografia::Book).to eq true
        end

	it "has an ISBN number" do
	    @b.add_ISBN(23)
            expect(@b.ISBN[0]).to eq 23
        end

	it "is a Bibliografia" do
	    expect(@b.is_a?Bibliografia::Bibliografia).to eq true
        end

	it "is a subclass of basicObject" do
            expect(@b.is_a?BasicObject).to eq true
	end

	it "has an author" do
	    @b.add_author("Rudolf Cicko")
	    expect(@b.Author[0]).to eq "Rudolf Cicko"
	end
end


describe Bibliografia::Revista do
	before :all do
		@r = Bibliografia::Revista.new
	end

	it "exist a magazine" do
		 expect(@r.is_a?Bibliografia::Revista).to eq true
	end

	it "is a Bibliografia" do
	    expect(@r.is_a?Bibliografia::Bibliografia).to eq true
        end

	it "is a subclass of basicObject" do
            expect(@r.is_a?BasicObject).to eq true
	end

	it "has an author" do
	   @r.add_author("Rudolf Cicko")
 	   expect(@r.Author[0]).to eq "Rudolf Cicko"
	end
	
	it "has an ISSN number" do
	   @r.add_ISSN(23)
	   expect(@r.ISSN[0]).to eq 23
	end
end



describe Bibliografia::Ebook do
	before :all do
		@e = Bibliografia::Ebook.new
	end


	it "exist an Ebook" do
		expect(@e.is_a?Bibliografia::Ebook).to eq true
	end

	it "is a Bibliografia" do
		expect(@e.is_a?Bibliografia::Bibliografia).to eq true
	end

	it "is a subclass of BasicObject" do
		expect(@e.is_a?BasicObject).to eq true
	end

	it "can have an url reference" do
		@e.add_URL("www.myBook.com")
		expect(@e.URL[0]).to eq "www.myBook.com"
	end

end
