class Artist
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
  Song.all.find_all {|song| song.artist == self}
end

def new_song(name, genre)
  Song.new(name, self, genre)
end

def genres
  Genre.artist.find_all {|genre| genre.artist == self}
end






end
