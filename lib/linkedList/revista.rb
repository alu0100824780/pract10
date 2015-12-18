
module Bibliografia
	class Revista < Bibliografia
		attr_reader :ISSN

		def initialize
		     super
		     @ISSN = []
		end

		def add_ISSN(num)
		     @ISSN << num
		end

   		def apa
			get_APA + "#{@ISSN}\n"				
                end

	end
end


