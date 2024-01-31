require_relative "./piece.rb"

class Knight < Piece

    


    protected
    def move_diffs
        [[2,1],[2,-1],[-2,1][-2,-1],[1,2][1,-2],[-1,2],[-1,-2]]
    end
end
