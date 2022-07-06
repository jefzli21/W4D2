class Piece

    attr_reader :color , :board, :pos

    def initialize(color, board, pos)
        @color = :color
        @board = board
        @pos = pos
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