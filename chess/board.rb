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

    def add_piece(piece, pos)
   
        self[pos] = piece
    end

    def move_piece(start_pos, end_pos)
        rows[0] = []   
        
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
        @rows = Array.new(8) {Array.new(8, '_')}
        # @rows = Array.new(8) {Array.new(8, NullPiece.new)}
        # @rows.fill_back_row(:black)
        # @rows.fill_back_row(:white)
    end


    

end

    
    
    