require 'spec_helper'

module GameOfLife
  describe Cell do

    def create_neighbours(i)
      neighbours = []
      j = 8 - i
      while i >= 1 do
        neighbours << Cell.new_alive_cell
        i -= 1
      end
      while j >= 1 do
        neighbours <<  Cell.new_dead_cell
        j -=  1
      end
      neighbours
    end

    context 'cell birth' do
      it 'should create an alive cell' do
        expect(Cell.new_alive_cell.is_alive?).to eq(true)
      end

      it 'should create a dead cell' do
        expect(Cell.new_dead_cell.is_dead?).to eq(true)
      end
    end

    context 'survivability conditions  of a live cell to next generation' do
      cell = Cell.new_alive_cell

      it 'should die if none of its neighbour are alive' do
        expect(cell.survive?(create_neighbours(0))).to eq(false)
      end

      it 'should die if only one of neighbour is alive' do
        expect(cell.survive?(create_neighbours(1))).to eq(false)
      end

      it 'should live if two of its neighbours are alive' do
        expect(cell.survive?(create_neighbours(2))).to eq(true)
      end

      it 'should live if three of its neighbours are alive' do
        expect(cell.survive?(create_neighbours(3))).to eq(true)
      end

      it 'should die if more than three of its neighbours are alive' do
        expect(cell.survive?(create_neighbours(5))).to eq(false)
      end
    end

    context 'survivability conditions for a dead cell to next generation' do
      cell = Cell.new_dead_cell
      it 'should become live if exactly three of its neighbours are alive' do
        expect(cell.survive?(create_neighbours(3))).to eq(true)
      end
    end
  end
end