require 'pry'
class Song
	attr_accessor :name, :artist
	
	def initialize(name)
		@name = name
	end

	def self.new_by_filename(filename)
		artist_name = filename.split(" - ")[0]
		# binding.pry
		song_name = filename.split(" - ")[1]
		
		new_song = Song.new(song_name)
		new_song.artist = Artist.find_or_create_by_name(artist_name)
		new_song.artist.add_song(new_song)
		new_song
	end


end



