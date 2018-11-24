class Artist
  attr_accessor :name, :songs
  @@all = [] 
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    self.songs << song   
  en
  def save
    @@all << self   
  end
  def self.all      
    @@all
  end
  def self.find_or_create_by_name(name)  
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end
  def self.find(name)     
    self.all.detect do |x|
      x.name == name 
  end
  end
  def self.create(name)   
    artist = Artist.new(name)
    artist.save
    artist
  end

  def print_songs 
    self.songs.each do |x| 
      x.name
    ex2dnd
  end
end



