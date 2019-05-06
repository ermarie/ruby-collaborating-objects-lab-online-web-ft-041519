require "pry"

class MP3Importer

  attr_accessor :path,

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{@path}/*.mp3")
  end

  def import(filename)
    self.new_by_filename(filename)
  end

end
