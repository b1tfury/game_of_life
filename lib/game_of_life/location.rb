module GameOfLife
  class Location

    attr_reader :x, :y

    def initialize(x, y)
      @x = x
      @y = y
    end

    def ==(other)
      if other.is_a?(self.class)
        self.x == other.x && self.y == self.y
      else
        false
      end
    end
  end
end