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
    artist = Artist.find_or_create_by_name(array[0])
    new_song.artist = artist
    #binding.pry
    new_song
  end
  
end


