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
  
  def songs(name, genre)
    Song.all.select {|song| song.artist == self}
  end
  
  def new_song 
    Song.new(name, self, genre)
  end
  
  def genres 
    songs.
  end
end