require_relative "board"


b = Board.new
b[[0,0]] = King.new(:black,b,[0,0])
# p b
p b[[0,0]].moves
b[[1,1]] = Pawn.new(:white,b,[1,1])
p b[[0,0]].moves
