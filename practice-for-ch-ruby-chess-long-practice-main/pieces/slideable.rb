module Slideable
    STRAIGHT_DIRS = [[0,1],[1,0],[0,-1],[-1,0]]
    DIAGONAL_DIRS = [[1,1],[1,-1],[-1,-1],[-1,1]]

    def moves
      # this method requires that we have a #move_dirs method implemented by the base class
      # use current position, move_dirs, and board state to figure out all possible moves
      res = []
      move_dirs.each do |dir|
        res += grow_unblocked_moves_in_dir(dir)
      end
      res
    end

    # def pos
    #   raise NotImplementedError.new
    # end

    # def board
    #   raise NotImplementedError.new
    # end

    def move_dirs
      # this only runs if the base class does not overwrite
      raise NotImplementedError.new
    end

    private
    def grow_unblocked_moves_in_dir(dir)
      res = []
      r, c = position
      dr, dc = dir
      new_pos = [r + dr, c + dc] # generate potential new position
      # return current res if new_pos is off the board
      # return current res if there is a piece of same color at new_pos
      # add new_pos to res and return if there is a piece of opposite color at new_pos
      # add new_pos to res and continue looping if new_pos is empty
      return res if !new_pos.all?{|num| num.between?(0,7)}
      while self.board[new_pos].empty?
        res << new_pos
        r, c = new_pos
        new_pos = [r + dr, c + dc]
        return res if !new_pos.all?{|num| num.between?(0,7)}
      end
      if self.board[new_pos].color == self.color
        return res
      else
        res << new_pos
        return res
      end
    end

end
