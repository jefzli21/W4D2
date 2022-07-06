require_relative "piece.rb"


class Pawn < Piece

    def to_s

    end

    def move_dir
        if self.at_start_row && self.color == :black
            return [[1,0],[2,0]]
        elsif !self.at_start_row && self.color == :black
            return [[1,0]]
        elsif !self.at_start_row && self.color == :black && self.can_attack?
            return [[1,0], [1,1], [1, -1]]
        elsif self.at_start_row && self.color == :black && self.can_attack?
            [[1,0],[2,0], [1,1], [1, -1]]
        elsif self.at_start_row && self.color == :white
            return [[-1,0],[-2,0]]
        elsif !self.at_start_row && self.color == :white
            return [[-1,0]]
        elsif !self.at_start_row && self.color == :white && self.can_attack?
            return [[-1,0], [-1,1], [-1, -1]]
        elsif self.at_start_row && self.color == :white && self.can_attack?
            return [[-1,0],[-2,0], [-1,1], [-1, -1]]
        end
    end

    def can_attack?
        row, col = self.pos

        if self.color == :black
            left = [row+1,col-1]
            right = [row+1,col+1]
        elsif self.color == :white
            left = [row-1,col+1]
            right = [row-1,col-1]
        end
    
        
        if @board[left].empty? && @board[right].empty?
            false
        else
            true
        end
    end


    def moves
        newarr = []

        self.move_dir.each do |pair|
            newpos = [(pos[0]+ pair[0] ), (pos[1] + pair[1])]

            if !@board.valid_pos?(newpos) || @board[newpos].color == self.color
                next
            end

            if @board[newpos].empty? || @board[newpos].color != self.color && !@board[newpos].empty?
                newarr << newpos
            end
        end


        newarr

    end

    def at_start_row?
        if self.color == :black
            self.pos[0] == 1
        elsif self.color == :white
            self.pos[0] == 6
        end
            
    end

    def forward_dir
        if self.color == :black
            return 1
        elsif self.color == :white
            return -1
        end
        
    end
    
end