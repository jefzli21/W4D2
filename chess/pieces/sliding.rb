require "byebug"

module Slideable

    def moves
        
        # pos = self.pos
        newarr = []
        self.move_dirs.each do |pair|
            # newpos = [(pos[0] + pair[0]), (pos[1] + pair[1])]
            accum = pos
            
            
            
            #    debugger
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

    # def recursion(pos, dir)
    #     newarr = [pos]

    #     newpos = [(pos[0] + dir[0]), (pos[1] + dir[1])]

    #         newarr << newpos
    #     elsif 


        
    # end



end





