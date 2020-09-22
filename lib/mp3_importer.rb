require 'pry'

class MP3Importer
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end 
  
  def files 
    # binding.pry
  file_name = Dir.entries(path) - [".", ".."]
  # new_arr = []
  # new_arr << "."
  # new_arr << ".."
  # file_name - new_arr
  # file_name.delete_at(1)
  # file_name.delete_at(-1)
  file_name
  end
  
  def import 
    files.each do |file| Song.new_by_file_name(file.gsub(".mp3","").split(" - ")
  end
    
end 