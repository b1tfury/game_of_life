module GameOfLife
  class Cell

    def initialize(state)
      @state = state
    end

    def self.new_alive_cell
      self.new('ALIVE')
    end

    def self.new_dead_cell
      self.new('DEAD')
    end

    def is_alive?
      @state == 'ALIVE'
    end

    def is_dead?
      @state == 'DEAD'
    end

    def survive?(neighbours)
      count = 0
      neighbours.each do |cell|
        if cell.is_alive?
          count += 1
        end
      end
      if self.is_alive?
        if count <= 1
          false
        elsif count == 2 || count == 3
          true
        elsif count > 3
          false
        end
      end
    end
  end
end