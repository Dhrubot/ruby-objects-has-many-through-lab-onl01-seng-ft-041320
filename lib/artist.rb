class Artist 
  
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.artist.name == self.name}
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def genres 
    songs.each {|song| song.genre}
  end
end