module GameOfLife
  class Location

    attr_reader :x, :y

    def initialize(x, y)
      @x = x
      @y = y
    end

    def adjacent_locations
      range = [-1, 0, 1]
      locations = []
      range.each do |x|
        range.each do |y|
          if !(x == y && x == 0)
            locations << Location.new((self.x + x), (self.y + y))
          end
        end
      end
      locations
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