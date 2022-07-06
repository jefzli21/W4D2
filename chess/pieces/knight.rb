require_relative "piece.rb"
require_relative "stepping.rb"

class Knight < Piece
    include Stepable
    
    def move_dirs 
        [[2, 1],[2,-1], [-2, 1], [-2, -1], [1,2], [-1, 2], [1, -2], [-1,-2]]
    end
end