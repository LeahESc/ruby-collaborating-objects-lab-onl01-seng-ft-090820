class Song 
  attr_accessor :name, :artist 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.new_by_filename(filename)
    song_array = filename.split(" - ")
    song = self.new(song_array[1])
    song.artist = Artist.add_song
    song
end 