require 'spec_helper'

module GameOfLife
  describe Cell do

    context 'cell birth' do
      it 'should create an alive cell' do
        expect(Cell.new_alive_cell.is_alive?).to eq(true)
      end

      it 'should create a dead cell' do
        expect(Cell.new_dead_cell.is_dead?).to eq(true)
      end
    end

    context 'next generation of live cell' do
      cell = Cell.new_alive_cell
      it 'should die if only one of neighbour is alive' do
        expect(cell.survive?).to eq(false)
      end
    end
  end
end