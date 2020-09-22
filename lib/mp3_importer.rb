require 'pry'

class MP3Importer
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end 
  
  def files 
     binding.pry
  # file_dir = Dir.glob('spec/fixtures/mp3s').reject { |e| File.directory? e }
  # file_dir
  file_name = Dir.glob("#{path}/*.mp3")
  file_name.select { |item| item != path }
  file_name
  end
end 