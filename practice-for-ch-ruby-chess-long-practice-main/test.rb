require_relative "board"


b = Board.new
b[[0,0]] = Rook.new("black",b,[0,0])
# p b

b[[0,3]] = Pawn.new("white",b,[0,3])
p b[[0,0]].moves
