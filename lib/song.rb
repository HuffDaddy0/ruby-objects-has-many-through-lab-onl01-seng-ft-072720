class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(artist, genre, name)
    @artist = artist
    @genre = genre
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

end
