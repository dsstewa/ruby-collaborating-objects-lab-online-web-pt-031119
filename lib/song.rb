require 'pry'

class Song

attr_accessor :song, :artist, :name

  
  def initialize(song)
    @song = song
    @name = song
  end
  

  
  def self.new_by_filename(filename)
  
    array = filename.splie(" - ")
    binding.pry
  
  end

  
  
end

