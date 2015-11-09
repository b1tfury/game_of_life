require  'spec_helper'

module GameOfLife
  describe Locations do
    context 'equality' do
      locations = Locations.new
      it 'should be equal to itself' do
        expect(locations).to eq(locations)
      end
    end
  end
end