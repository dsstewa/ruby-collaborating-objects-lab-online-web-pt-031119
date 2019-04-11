require 'pry'

class Song

attr_accessor :song, :artist, :name

  
  def initialize(song)
    @song = song
    @name = song
  end
  

  
  def self.new_by_filename(filename)
    array = filename.split(" - ")
    new_song = Song.new(array[1])
    new_song.artist = Artist.find_or_create_by_name(name)
    new_song

end
  
end

# class Song
#   attr_accessor :name, :artist

#   def initialize(name)
#     @name = name
#   end

#   def self.new_by_filename(filename)
#     artist, song = filename.split(" - ")
#     new_song = self.new(song)
#     new_song.artist_name = artist
#     new_song
#   end

#   def artist_name=(name)
#     self.artist = Artist.find_or_create_by_name(name)
#     artist.add_song(self)
#   end
# end
