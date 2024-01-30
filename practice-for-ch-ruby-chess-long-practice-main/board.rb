require_relative "piece"

class Board

    def initialize
        @rows = Array.new(8) {Array.new(8)}

    end

    def populate
        @rows[0] = [Piece.new("BRook"), Piece.new("BKnight"), Piece.new("BBishop"), Piece.new("BQueen"), Piece.new("BKing"), Piece.new("BBishop"), Piece.new("BKnight"), Piece.new("BRook")]
        @rows[1].map! {|ele| ele = Piece.new("BPawn")}
        (2..5).each do |row|
            @rows[row].map! {|ele| ele = Piece.new("NullPiece")}
        end
        @rows[6].map! {|ele| ele = Piece.new("WPawn")}

        @rows[7] = [Piece.new("WRook"), Piece.new("WKnight"), Piece.new("WBishop"), Piece.new("WQueen"), Piece.new("WKing"), Piece.new("WBishop"), Piece.new("WKnight"), Piece.new("WRook")]

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
        if self[start_pos] == Piece.new("NullPiece")
            raise "There is no piece to move on this position"
        # elsif !@rows[start_pos].valid_moves.include?(end_pos)
        #     raise "You cannot move to this position"
        end

        value = self[start_pos]
        self[start_pos] = Piece.new("NullPiece")
        self[end_pos] = value
    end

end

# b = Board.new
# b.populate
# b.move_piece([1,0], [2,0])
