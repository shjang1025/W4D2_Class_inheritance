
class Piece

    attr_reader :color, :board, :position
    def initialize(color, board, position)
        @color = color
        @board = board
        @position = position
    end

    def to_s
        symbol
    end

    def empty?
        false
    end

    def valid_moves

    end

    def pos=(val)
        @position = val
    end

    def symbol
        " "
    end
end
