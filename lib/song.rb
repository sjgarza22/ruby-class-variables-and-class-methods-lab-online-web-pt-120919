class Song
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
    
  end
  
  def count
    @@count
  end
  
  def genres
    @@genres.uniq!
  end
  
  def artists
    @@artists.uniq!
  end
  
  def genre_count
    genre_hash = {}
    
    @@genres.each do |genre|
      if genre_hash.has_key?(genre)
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end
    end
    
    genre_hash
    
  end
  
end

