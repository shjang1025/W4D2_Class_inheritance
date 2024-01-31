require_relative "../piece.rb"

class Rook < Piece 
    # include Slidable 

    def initialize(color, board, position)
        super
    end

    private
    def move_dirs
        return "moves vertically"
    end
end