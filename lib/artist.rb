class Artist

  attr_accessor :name, :songs


  @@all = []


  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end


  def save
    @@all << self
  end


  def self.all
    @@all
  end


  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end


  def self.find_artist(name)
    self.all.find do |instance|
      instance.name == name
    end
  end


  def self.find_or_create_by_name(name)
    if self.find_artist(name)
      self.find_artist(name)
    else
      Artist.new(name)
    end
  end


  def add_song(song)
    @songs << song
  end


end
