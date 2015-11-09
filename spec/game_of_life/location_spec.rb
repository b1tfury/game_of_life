require 'spec_helper'

module GameOfLife
  describe Location do
    context 'equality' do
      location1 = Location.new(1, 1)
      location2 = Location.new(1, 1)
      location3 = Location.new(2, 3)
      obj = Object.new

      it 'should be equal to itself' do
        expect(location1).to eq(location1)
      end

      it 'should be equal to other location with same co ordinates' do
        expect(location1).to eq(location2)
      end

      it 'should not be equal if other location hash different co ordinates' do
        expect(location1).not_to eq(location3)
      end

      it 'should not be compared with soemthing other than location' do
        expect(location1).not_to eq(obj)
      end

      it 'should satisfies symmetric property' do
        expect(location1 == location2).to eq(location2 == location1)
      end
    end
  end
end