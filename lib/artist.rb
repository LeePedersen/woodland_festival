class Artist
  attr_accessor :name, :genre, :id

  @@total_rows = 0

  def initialize(name, genre, id)
    @name = name
    @genre = genre
    @id = id || @@total_rows += 1
  end
end
