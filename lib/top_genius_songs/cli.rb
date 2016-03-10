class TopGeniusSongs::CLI
	def call
		start
	end

	def start
		puts "Hi Welcome to Top Genius Songs!!"
		sleep(1)
		songs = TopGeniusSongs::Scraper.scrape
		list
		input = nil
		help
		while input != 'exit'
			input = gets.chomp
			if input == 'list'
				list
			elsif input.to_i > 0 && input.to_i <= songs.size
				puts "------------ '#{songs[input.to_i-1].title}' Lyrics --------------- "
				sleep(1)
				puts "#{songs[input.to_i-1].lyrics}"
				print ">>  "
			else
				help
			end
		end
		puts "Genius!!!!! we rule!"
	end

	def help
		puts "Type 'list' to list songs, or any number of the song for more info..."
		print ">>  "
	end

	def list
		puts "Songs:"
		TopGeniusSongs::Song.all.each.with_index(1) do |song, index|
			puts "#{index}. \"#{song.title}\" By \"#{song.artist}\""
			print "Description:"
			puts "#{song.description[0..100]}..."
		end
	end
end