module GameOfLife
  class Cell

    def initialize(state)
      @state = state
    end

    def is_alive?
      @state == 'ALIVE'
    end
  end
end