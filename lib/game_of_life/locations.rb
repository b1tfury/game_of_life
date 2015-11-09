module GameOfLife
  class Locations
    attr_reader :locations

    def initialize(locations)
      @locations = locations
    end

    def ==(other)
      if other.is_a?(self.class)
        other.locations == self.locations
      else
        false
      end
    end
  end
end