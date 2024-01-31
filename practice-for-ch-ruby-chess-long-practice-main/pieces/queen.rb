require_relative "./piece.rb"
require_relative 'slideable'
class Queen < Piece
    # include Slidable
  include Slideable

  def symbol
    color == :black ? '♛' : '♕'
  end

  private

  def move_dirs
    STRAIGHT_DIRS + DIAGONAL_DIRS
  end
end
