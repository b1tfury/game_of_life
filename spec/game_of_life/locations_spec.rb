require  'spec_helper'

module GameOfLife
  describe Locations do
    locations = [Location.new(1, 2), Location.new(2, 2), Location.new(2, 1), Location.new(2, 0), Location.new(1, 0), Location.new(0, 0),
                 Location.new(0, 1), Location.new(0, 2)]

    context 'equality' do
      locations1 = Locations.new(locations)
      locations2 = Locations.new(locations)
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
    end
  end
end