# require_relative "./pieces/slideable.rb"
# require_relative "./pieces/steppable.rb"
Dir["./pieces/*.rb"].each {|file| require file }

class Piece
    attr_reader :color
    def initialize(color, board, position)
        @color = color
        @board = board
        @position = position
    end











end
