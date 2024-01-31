require_relative "../piece.rb"

class Queen < Piece
    # include Slidable 

    def initialize(color, board, position)
        super
    end

    private
    def move_dirs
        return "moves vertically and diagonally"
    end
end