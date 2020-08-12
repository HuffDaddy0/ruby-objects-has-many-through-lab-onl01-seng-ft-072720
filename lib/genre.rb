class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.find_all {|song| song.genre == self}
  end

  def artist
    Artist.songs.find_all {|song| song.genre == self}
  end

end
