require_relative 'pieces'

class Board 

    def initialize
        @rows = Array.new(8){Array.new(8, NullPiece.instance)}
        fill_board
        back_row = [Rook, Bishop, Knight, etc...]
        back_row[i].new(black)
    end

    def [](pos)
        row,col = pos
        @rows[row][col]
    end

    def []=(pos,val)
        row, col = pos
        @rows[row][col] = val
    end

    def move_piece(start_pos, end_pos)

     rows[0] = []   
        
        
    end


    

end

    
    
    