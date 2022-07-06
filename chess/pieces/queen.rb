require_relative "piece.rb"
require_relative "sliding.rb"

class Queen < Piece
    include Slideable


    def move_dirs
        [[1,1],[0,1], [0, -1], [1, 0], [-1, 0], [-1,-1], [1,-1], [-1, 1]]
    end
end