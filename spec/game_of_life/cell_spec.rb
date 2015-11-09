require 'spec_helper'

module GameOfLife
  describe Cell do
    it 'should create an alive cell' do
      expect(Cell.new('ALIVE').is_alive?).to eq(true)
    end

    it 'should create a dead cell' do
      expect(Cell.new('DEAD').is_dead?).to eq(true)
    end
  end
end