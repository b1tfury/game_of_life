require 'spec_helper'

module GameOfLife
  describe Location do
    context 'equality' do
      location1 = Location.new(1, 1)
      location2 = Location.new(1, 1)

      it 'should be equal to other location with same co ordinates' do
        expect(location1).to eq(location2)
      end


    end
  end
end