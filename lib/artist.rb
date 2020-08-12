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
  Song.all.find {|song| song.artist == self}
end

def new_song(name, genre)
  Song.new(self, genre, name)
end

def genres
  genres = Genre.artist.find_all {|genre| genre.artist == self}
end






end
