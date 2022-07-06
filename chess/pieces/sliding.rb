require "byebug"

module Slideable

    def moves
        
        newarr = []
        self.move_dirs.each do |pair|

            accum = pos
            
            loop do
               newpos = [(accum[0]+ pair[0] ), (accum[1] + pair[1])]
                if !@board.valid_pos?(newpos)
                    break
                end

                if @board[newpos].empty?
                    newarr << newpos
                    accum = newpos
                end

                if @board[newpos].color == self.color
                    break
                end


        
                
                if @board[newpos].color != self.color && !@board[newpos].empty?
                    newarr << newpos
                    break
                end
                
            end
        
        end

        newarr
            
    end


end





