class Player
  attr_accessor :points
  attr_reader :name
  
  def initialize (name)
    @name = name
    @points = 3
  end
end