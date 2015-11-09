require  'spec_helper'

module GameOfLife
  describe Locations do
    context 'equality' do
      locations = Locations.new
      obj = Object.new

      it 'should be equal to itself' do
        expect(locations).to eq(locations)
      end

      it 'should not be compared with other than a locations' do
        expect(locations).not_to eq(obj)
      end
    end
  end
end