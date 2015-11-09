require 'spec_helper'

module GameOfLife
  describe Location do
    context 'equality' do
      location1 = Location.new(1, 1)
      location2 = Location.new(1, 1)
      location3 = Location.new(2, 3)

      it 'should be equal to other location with same co ordinates' do
        expect(location1).to eq(location2)
      end

      it 'should not be equal if other location hash different co ordinates' do
        expect(location1).not_to eq(location3)
      end
    end
  end
end