require_relative 'pieces'

class Board 

    def initialize
        self.fill_board #temp test
        # @rows = Array.new(8){Array.new(8, NullPiece.instance)}

    end

    def [](pos)
        row,col = pos
        @rows[row][col]
    end

    def []=(pos,val)
        row, col = pos
        @rows[row][col] = val
    end

    def valid_pos?(pos)
    
        pos[0].between?(0,7) && pos[1].between?(0,7)
        
        
    end


    def add_piece(piece, pos)
        
        self[pos] = piece
    end

    def move_piece(start_pos, end_pos)    
        row, col = end_pos 
        
        raise Error if self[start_pos].nil?
        raise Error if row < 0 || row > 7 || col < 0 && col > 7
        self[end_pos] = self[start_pos]
        self[start_pos] = NullPiece.instance


        
    end

    def fill_back_row(color)
        back_pieces = [
      Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook
    ]
        @rows.each_with_index do |row, i|
            back_pieces.each_with_index do |piece, j|
                if color == :black && i == 0
                    piece.new(color, self, [i, j])
                elsif color == :white && i == 7
                    piece.new(color, self,[i, j])
                end
            end
        end

    end

    # def fill_pawns(color)
    #     @rows.each_with_index do |row, i|
    #         (0...row.length).each do |j|
    #             if color == :black && i == 1
    #                 Pawn.new(color, self, [i, j])
    #             elsif color == :white && i == 6
    #                 Pawn.new(color, sellf, [i, j])

    # end

    def fill_board
        # @rows = Array.new(8) {Array.new(8, '_')}
        @rows = Array.new(8) {Array.new(8, NullPiece.instance)}
        self.fill_back_row(:black)

        self.fill_back_row(:white)
    end


    

end

    
    
    