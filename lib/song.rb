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
    # artist.name = song_array[0]
    song.artist_name = song_array[0]
    song
  end
  
  def artist_name=(name) 
    artist = Artist.find_or_create_by_name(name)
    song = artist.add_song(self) 
  end 
end 