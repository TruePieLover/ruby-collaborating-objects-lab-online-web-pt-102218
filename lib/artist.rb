attr_accessor :name, :songs
  @@all = [] 
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    self.songs << song   
  end
  def save
    @@all << self     #saves all created instances of Artist class in 
                    #@@all class variable
  end

  def self.all      #class method all returns all instances of Artist class 
    @@all
  end
