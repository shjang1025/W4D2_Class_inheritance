require_relative "./piece.rb"
class Pawn < Piece

    def symbol
        color == :black ? '♟' : '♙'
    end
end
