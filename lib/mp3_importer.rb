class MP3Importer
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end 
  
  def files 
  file_dir = Dir["/spec/fixtures/mp3s/*"]
  # file_dir
  Dir["/spec/fixtures/mp3s.rb"]
  end
end 