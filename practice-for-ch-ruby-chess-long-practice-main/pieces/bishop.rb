require_relative "./piece.rb"
require_relative 'slideable'

class Bishop < Piece
    include Slideable


    def symbol
        color == :black ? '♝' : '♗'
    end
    private

    def move_dirs
        DIAGONAL_DIRS
    end

end
