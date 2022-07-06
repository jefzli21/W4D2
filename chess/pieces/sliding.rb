

module Slideable

    def moves
        newarr = []
        pos = self.pos
        self.move_dirs.each do |pair|
            newpos = [(pos[0] + pair[0]), (pos[1] + pair[1])]
            if @board[newpos].nil?
                self.recursion(newpos, pair)
         


            
    end

    def recursion(pos, dir)
        newarr = [pos]

        newpos = [(pos[0] + dir[0]), (pos[1] + dir[1])]

            newarr << newpos
        elsif 


        
    end



end





