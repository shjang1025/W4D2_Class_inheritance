require_relative "./piece.rb"
require_relative 'slideable'

class Rook < Piece
    include Slideable

    def symbol
        color == :black ? '♜' : '♖'
    end

    private

    def move_dirs
        STRAIGHT_DIRS
    end
end
