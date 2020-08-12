class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def songs
    Song.all.find_all {|song| song.genre = self}
  end

  def artists
    Artist.all.find_all {|artist| artist.genre == self}
  end

end
