class TopGeniusSongs::Song

	@@all = []

	def self.all 
		@@all
	end

	attr_accessor :artist, :title, :description, :link

	def lyrics
		@lyrics ||= TopGeniusSongs::Scraper.get_lyrics(self.link)
	end

end