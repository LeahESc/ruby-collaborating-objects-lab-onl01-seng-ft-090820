class MP3Importer
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end 
  
  def files 
  file_dir = Dir.glob('path/**/*').reject { |e| File.directory? e }
  file_dir
  end
end 