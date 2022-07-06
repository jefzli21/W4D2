require_relative "piece.rb"
require_relative "stepping.rb"

class King < Piece
    
    include Stepable

    def move_dirs
        [[1,1],[0,1], [0, -1], [1, 0], [-1, 0], [-1,-1], [1,-1], [-1, 1]]
    end
end