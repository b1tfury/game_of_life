module GameOfLife
  class Cell

    def initialize(state)
      @state = state
    end

    def is_alive?
      @state == 'ALIVE'
    end

    def is_dead?
      @state == 'DEAD'
    end
  end
end