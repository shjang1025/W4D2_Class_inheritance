require_relative "board"


b = Board.new
# b[[0,0]] = King.new(:black,b,[0,0])
# # p b
# p b[[0,0]].moves
# b[[1,1]] = Pawn.new(:white,b,[1,1])
# p b[[0,0]].moves
b.populate
puts b[[0,0]]
puts b[[1,0]]

puts b[[6,0]]
puts b[[7,0]]
b.move_piece([1,0], [1,1])
