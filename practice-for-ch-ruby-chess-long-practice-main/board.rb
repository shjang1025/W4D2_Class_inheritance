require_relative "piece"

class Board

    def initialize
        @rows = Array.new(8) {Array.new(8)}

    end

    def populate
        @rows[0] = [Rook.new("black",self, [0,0]), Knight.new("black",self,[0,1]), Bishop.new("black",self,[0,2]), Queen.new("black", self, [0,3]), King.new("black",self,[0,4]) , Bishop.new("black",self,[0,5]),Knight.new("black",self,[0,6]), Rook.new("black",self, [0,7])]
        @rows[1].each_with_index {|ele,idx| ele = Pawn.new("black", self, [1,idx])}
        (2..5).each do |row|
            @rows[row].each_with_index {|ele,idx| ele = NullPiece.instance}
        end
        @rows[6].each_with_index {|ele,idx| ele = Pawn.new("white", self, [6,idx])}

        @rows[7] = [Rook.new("white",self,[7,0]), Knight.new("white",self,[7,1]), Bishop.new("white",self,[7,2]), Queen.new("white", self, [7,3]), King.new("white",self,[7,4]) , Bishop.new("white",self,[7,5]),Knight.new("white",self,[7,6]), Rook.new("white",self, [7,7])]

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
        # elsif !@rows[start_pos].valid_moves.include?(end_pos)
        #     raise "You cannot move to this position"
        end

        value = self[start_pos]
        self[start_pos] = NullPiece.instance
        self[end_pos] = value
    end

end

# b = Board.new
# b.populate
# b.move_piece([1,0], [2,0])
