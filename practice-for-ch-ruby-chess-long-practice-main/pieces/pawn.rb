require_relative "./piece.rb"
class Pawn < Piece

    def symbol
        color == :black ? '♟' : '♙'
    end

    def moves
        res = []
        dr, dc = forward_steps
        r, c = position
        new_pos = [r + dr, c + dc]
        return res if !new_pos.all?{|num| num.between?(0,7)}
        if board[new_pos].empty?
            res << new_pos
            if at_start_row?
                new_pos2 = [r + dr*2, c + dc*2]
                res << new_pos2 if board[new_pos2].empty?
            end
        end

        side_attacks.each do |ele|
            ar, ac = ele
            new_pos = [r + ar, c + ac]
            if new_pos.all?{|num| num.between?(0,7)}
                res << new_pos if board[new_pos].color != self.color && !board[new_pos].empty?
            end
        end
        res

    end

    private
    def at_start_row?
       (color == :black && position[0] == 1) || (color == :white && position[0] == 6)
    end

    def forward_dir
        if color == :black
            return 1
        else
            return -1
        end
    end

    def forward_steps
        [forward_dir, 0]
    end

    def side_attacks
        [[forward_dir, 1], [forward_dir,-1]]
    end

end
