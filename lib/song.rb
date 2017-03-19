require 'pry'

class Song


  attr_accessor :name, :artist


  def initialize(name)
    @name = name
  end


  def self.new_by_filename(path)
    artist = path.split(" - ")[0]
    song = path.split(" - ")[1]
    genre = path.split(" - ")[2]
    new_song = Song.new(song)
    new_song.artist_name = artist
    new_song
  end


  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end


end
