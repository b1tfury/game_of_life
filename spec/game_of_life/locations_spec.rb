require  'spec_helper'

module GameOfLife
  describe Locations do

    locations = [Location.new(1, 2), Location.new(2, 2), Location.new(2, 1), Location.new(2, 0), Location.new(1, 0), Location.new(0, 0),
                 Location.new(0, 1), Location.new(0, 2)]
    other_locations = [Location.new(3, 2), Location.new(2, 2), Location.new(2, 1), Location.new(2, 0), Location.new(1, 0), Location.new(0, 0),
                 Location.new(2, 1), Location.new(0, 2)]

    def build_adj_locations(locations)
      ans = []
      locations.each do |loc|
        tmp = loc.adjacent_locations
        tmp.each do |tmp_loc|
          ans << tmp_loc
        end
      end
      ans = ans.uniq
      ans
    end

      locations1 = Locations.new(locations)
      it 'adjacent locations should give adjacent locations of all the locations' do
        expect(locations1.adjacent_locations).to match_array(build_adj_locations(locations))
      end

    context 'equality' do
      locations1 = Locations.new(locations)
      locations2 = Locations.new(locations)
      locations3 = Locations.new(other_locations)
      obj = Object.new

      it 'should be equal to itself' do
        expect(locations1).to eq(locations1)
      end

      it 'should not be compared with other than a locations' do
        expect(locations1).not_to eq(obj)
      end

      it 'should be equal if all the locations are equal' do
        expect(locations1).to eq(locations2)
      end

      it 'should not be equal if all the locations are not equal' do
        expect(locations1).not_to eq(locations3)
      end
    end
  end
end