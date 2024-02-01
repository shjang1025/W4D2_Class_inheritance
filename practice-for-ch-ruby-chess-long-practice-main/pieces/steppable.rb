module Steppable

    def moves
        res = []
        move_diffs.each do |ele|
            dr, dc = ele
            r, c = position
            new_pos = [r + dr, c + dc]
            if new_pos.all?{|num| num.between?(0,7)}
                if self.board[new_pos].empty?
                    res << new_pos
                else
                    unless self.board[new_pos].color == self.color
                        res << new_pos
                    end
                end
            end
        end
        res
    end

    def move_diffs
        # this only runs if the base class does not overwrite
        raise NotImplementedError.new
    end

end
