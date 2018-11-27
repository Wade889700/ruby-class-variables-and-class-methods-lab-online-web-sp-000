
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists << @artist
    @@count +=1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_hash={}
    @@genres.each do |genre|
      if genre_hash[genre]
        genre_hash[genre] +=1
      else
        genre_hash[genre] = 1
    end
    end
    genre_hash
  end


  def self.artist_count
    artist_hash={}
    @@artists.each do |artist|
      if genre_hash[genre]
        genre_hash[genre] +=1
      else
        genre_hash[genre] = 1
    end
    end
    genre_hash
  end

end
