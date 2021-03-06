require "./lib/linkedList.rb"
require "./lib/Bibliografia.rb"


lista = LinkedList::List.new

#Libro A
libroA = Bibliografia.new

libroA.add_author("Dave Thomas")
libroA.add_author("Andy Hunt")
libroA.add_author("Chad Fowler")
libroA.set_title("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide")
libroA.set_serie("The Facets of Ruby")
libroA.set_editorial("Pragmatic Bookshelf")
libroA.set_edition("4 edition")
libroA.set_publication("July 7, 2013")
libroA.add_ISBN("ISBN-13: 978-1937785499")
libroA.add_ISBN("ISBN-10: 1937785491")

#Libro B
libroB = Bibliografia.new

libroB.add_author("Scott Chacon")
libroB.set_title("Pro Git 2009th Edition")
libroB.set_serie("Pro")
libroB.set_editorial("Apress")
libroB.set_edition("2009 edition")
libroB.set_publication("August 27, 2009")
libroB.add_ISBN("ISBN-13: 978-1430218333")
libroB.add_ISBN("ISBN-10: 1430218339")


#Libro C
libroC = Bibliografia.new

libroC.add_author("David Flanagan")
libroC.add_author("Yukihiro Matsumoto")
libroC.set_title("The Ruby Programming Language")
libroC.set_editorial("O'Reilly Media")
libroC.set_edition("1 edition")
libroC.set_publication("February 4, 2008")
libroC.add_ISBN("ISBN-10: 0596516177")
libroC.add_ISBN("ISBN-13: 978-0596516178")


#libro D
libroD = Bibliografia.new

libroD.add_author("David Chelimsky")
libroD.add_author("Dave Astels")
libroD.add_author("Bryan Helmkamp")
libroD.add_author("Dan North")
libroD.add_author("Zach Dennis")
libroD.add_author("Aslak Hellesoy")
libroD.set_title("The RSpec Book: Behaviour Driven DEvelopment with RSPec, Cucumber, and Friends")
libroD.set_serie("The Facets of Ruby")
libroD.set_editorial("Pragmatic Bookshelf")
libroD.set_edition("1 edition")
libroD.set_publication("December 25, 2010")
libroD.add_ISBN("ISBN-10: 1934356379")
libroD.add_ISBN("ISBN-13: 978-1934356371")


#libro E
libroE = Bibliografia.new

libroE.add_author("Richard E")
libroE.set_title("Silverman Git Pocket Guide")
libroE.set_editorial("O'Reilly Media")
libroE.set_edition("1 edition")
libroE.set_publication("August 2, 2013")
libroE.add_ISBN("ISBN-10: 1449325866")
libroE.add_ISBN("ISBN-13: 978-1449325862")




lista.push_back(libroA)
lista.push_back(libroB)
lista.push_back(libroC)
lista.push_back(libroD)
lista.push_back(libroE)


for i in 0..lista.Size-1 do
	puts "<-- Libro #{i} -->"
	puts lista.at(i).value.get_formato
end








