module GameOfLife
  class Locations
    attr_reader :locations

    def initialize(locations)
      @locations = locations
    end

    def adjacent_locations
      adj_locs = []
      self.locations.each do |location|
        tmp_adjacent_locations = location.adjacent_locations
        tmp_adjacent_locations.each do |tmp_location|
          adj_locs << tmp_location
        end
      end
      adj_locs = adj_locs.uniq
      adj_locs
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