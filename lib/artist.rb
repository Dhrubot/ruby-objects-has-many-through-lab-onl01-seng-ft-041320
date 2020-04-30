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
    song = Song.new(name, genre)
    song.artist = self
  end
  
  def new_song 
    
  end
  
  def genres 
    
  end
end