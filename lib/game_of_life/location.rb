module GameOfLife
  class Location

    attr_reader :x, :y

    def initialize(x, y)
      @x = x
      @y = y
    end

    def ==(other)
      true
    end
  end
end