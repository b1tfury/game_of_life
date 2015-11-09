module GameOfLife
  class Locations
    def ==(other)
      if other.is_a?(self.class)
        true
      else
        false
      end
    end
  end
end