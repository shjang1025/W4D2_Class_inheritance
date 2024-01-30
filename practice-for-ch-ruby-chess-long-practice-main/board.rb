require_relative "piece"

class Board 

    def initialize
        @rows = Array.new(8) {Array.new(8)}

    end

    def populate
        @rows[0] = ["BRook", "BKnight", "BBishop", "BQueen", "BKing", "BBishop", "BKnight", "BRook"]
        @rows[1].map {|ele| ele = "BPawn"}
        [2..5].each do |row|
            @rows[row].map {|ele| ele = "NullPiece"}
        end
        @rows[6].map {|ele| ele = "WPawn"}

        @rows[7] = ["WRook", "WKnight", "WBishop", "WQueen", "WKing", "WBishop", "WKnight", "WRook"]


    end


    def [](pos)
        row, col = pos
        @row[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @row[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        if @rows[start_pos] == NullPiece
            raise "There is no piece to move on this position"
        elsif !@rows[start_pos].valid_moves.include?(end_pos)
            raise "You cannot move to this position"
        end
        @rows[start_pos] = NullPiece
    end

end