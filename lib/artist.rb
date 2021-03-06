class Artist 
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self 
  end 
  
  def self.all 
    @@all
  end
  
  def add_song(song)
    song.artist = self 
    @songs << song
  end 
    
  def songs 
    Song.all.select{|s| s.artist == self} 
  end

  def self.find_or_create_by_name(name)
    if artist = @@all.find {|a| a.name == name}
       artist 
    else 
      artist = Artist.new(name)
    end 
  end 
  
  def print_songs
    songs.select{|song| puts song.name} 
  end
    
  


end 