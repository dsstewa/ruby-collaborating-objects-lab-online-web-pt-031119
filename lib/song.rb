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

