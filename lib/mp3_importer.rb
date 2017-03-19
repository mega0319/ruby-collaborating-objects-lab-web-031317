
class MP3Importer


  attr_accessor :path


  def initialize(path)
    @path = path
    @files = []
  end


  def files
    Dir.foreach(@path) do |file|
      if file.end_with?(".mp3")
        @files << file
      end
    end
    @files
  end


  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end


end
