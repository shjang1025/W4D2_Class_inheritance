require_relative "../piece.rb"

class Bishop < Piece 
    # include Slidable

    def initialize(color, board, position)
        super
    end

    private
    def move_dirs
        return "moves diagonally"
    end
end