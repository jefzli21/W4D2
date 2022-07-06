class Piece

    # STARTING_ROW(color, board, pos) = [Rook.new(color, board, pos), Knight.new(color, board, pos), Bishop.new(color, board, pos), Queen.new(color, board, pos), King.new(color, board, pos), Bishop.new(color, board, pos), Knight.new(color, board, pos), Rook.new(color, board, pos)]
    # SECOND_ROW 
    def initialize(color, board, pos)
        @color = :color
        @board = board
        @pos = pos
        # @board[0] = STARTING_ROW(black)
        @board.add_piece(self, @pos)
        
    end

    def to_s
        self.to_s
    end

    def empty?
        false

    end

    def valid_moves

        
    end

    




end