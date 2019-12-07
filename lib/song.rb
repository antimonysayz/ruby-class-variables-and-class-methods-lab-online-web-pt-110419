
require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @genre = genre
    @artist = artist
    @@artists << artist
  end
  
  def self.count
      @@count
  end
  
  def new(name, artist, genre) 
    
  end
##binding.pry
end

