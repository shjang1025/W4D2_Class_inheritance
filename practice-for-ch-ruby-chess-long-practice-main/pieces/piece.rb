# require_relative "./pieces/slideable.rb"
# require_relative "./pieces/steppable.rb"

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

    end

    def symbol
        " "
    end
end
