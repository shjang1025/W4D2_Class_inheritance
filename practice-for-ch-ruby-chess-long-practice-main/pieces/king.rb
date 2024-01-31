require_relative "./piece.rb"
require_relative "./steppable.rb"

class King < Piece
    include Steppable
    def symbol
        color == :black ? '♚' : '♔'
    end

    protected
    def move_diffs
        [[1,0],[1,1],[0,1],[-1,1],[-1,0],[-1,-1],[0,-1],[1,-1]]
    end

end
