


module Stepable
    def moves

        newarr = []
        self.move_dirs.each do |pair|

            newpos = [(pos[0]+ pair[0] ), (pos[1] + pair[1])]

            if !@board.valid_pos?(newpos) || @board[newpos].color == self.color
                next
            end

            if @board[newpos].empty? || @board[newpos].color != self.color && !@board[newpos].empty?
                newarr << newpos
            end

            # if @board[newpos].color == self.color
            #     next
            # end
            
            # if @board[newpos].color != self.color && !@board[newpos].empty?
            #     newarr << newpos
            #     next
        end
           
        newarr
    end


end

