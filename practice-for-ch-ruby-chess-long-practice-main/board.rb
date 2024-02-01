require_relative "pieces"

class Board

    def initialize
        @rows = Array.new(8) {Array.new(8, NullPiece.instance)}

    end

    def populate
        @rows[0] = [Rook.new(:black,self, [0,0]), Knight.new(:black,self,[0,1]), Bishop.new(:black,self,[0,2]), Queen.new(:black, self, [0,3]), King.new(:black,self,[0,4]) , Bishop.new(:black,self,[0,5]),Knight.new(:black,self,[0,6]), Rook.new(:black,self, [0,7])]
        (0..7).each do |i|
            self[[1,i]] = Pawn.new(:black, self, [1,i])
            self[[6,i]] = Pawn.new(:white, self, [6,i])
        end
        @rows[7] = [Rook.new(:white,self,[7,0]), Knight.new(:white,self,[7,1]), Bishop.new(:white,self,[7,2]), Queen.new(:white, self, [7,3]), King.new(:white,self,[7,4]) , Bishop.new(:white,self,[7,5]),Knight.new(:white,self,[7,6]), Rook.new(:white,self, [7,7])]

    end


    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @rows[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        if self[start_pos] == NullPiece.instance
            raise "There is no piece to move on this position"
        elsif !self[start_pos].moves.include?(end_pos)
            raise "You cannot move to this position"
        end

        value = self[start_pos]
        self[start_pos] = NullPiece.instance
        self[end_pos] = value
        self[end_pos].pos = end_pos
    end

end

b = Board.new
b.populate
# p b[[1,0]]
b.move_piece([1,0], [2,0])
