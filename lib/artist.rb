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
    
  end
  
  def new_song 
    Song.new(name, self, genre)
  end
  
  def genres 
    
  end
end