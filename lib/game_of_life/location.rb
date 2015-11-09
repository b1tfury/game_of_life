module GameOfLife
  class Location

    attr_reader :x, :y

    def initialize(x, y)
      @x = x
      @y = y
    end

    def ==(other)
      self.x == other.x && self.y == self.y
    end
  end
end