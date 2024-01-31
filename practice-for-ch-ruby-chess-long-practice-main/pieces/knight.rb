require_relative "../piece.rb"

class Knight < Piece
    
    MOVE = [[2,1]] 
    def initialize(color, board, position)
        super
    end

    protected
    def move_diffs
        [[2,1],[2,-1],[-2,1][-2,-1],[1,2][1,-2],[-1,2],[-1,-2]]
    end
end