
module Bibliografia
	class Ebook < Bibliografia
		attr_reader :ISSN, :URL

		def initialize 
			super
			@ISSN = []
			@URL = []
		end
		def add_ISSN(num)
			@ISSN << num
		end

		def add_URL(url)
			@URL << url
		end

		def apa
			get_APA + "URL : #{@URL}. ISSN : #{@ISSN}\n"				
                end
	end
end
