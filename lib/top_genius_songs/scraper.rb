class TopGeniusSongs::Scraper
	def self.scrape
		page = Nokogiri::HTML(open("http://genius.com/"))
		page.search(".song_card").each do |song|
			TopGeniusSongs::Song.all << TopGeniusSongs::Song.new.tap do |s|
				s.title = song.search(".song_card-title").text
				s.artist = song.search(".song_card-artist").text
				s.description = song.search(".song_card-description").text.strip
				s.link = song.search("a")[0].attributes["href"].value
			end
		end
		TopGeniusSongs::Song.all
	end

	def self.get_lyrics(url)
		page = Nokogiri::HTML(open(url))
		page.search('.lyrics p').text.strip
	end
end