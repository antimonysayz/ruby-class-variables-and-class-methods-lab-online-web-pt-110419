
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @genre = genre
    @@genres << genre
    @artist = artist
    @@artists << artist
  end
  
  def self.artists
    return @@artists.uniq 
  end
  
  def self.genres
    return @@genres.uniq
  end
  
  def self.genre_count
    genre_count = {}
    
    @@genres.each do |genre|
      if genre_count[genre] 
        genre_count[genre] += 1
        
      else 
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
  
  def self.count
    @@count
  end
  
  def new(name, artist, genre) 
    
  end
end

