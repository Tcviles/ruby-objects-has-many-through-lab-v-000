class Genre
  attr_accessor :name, :songs

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
end
