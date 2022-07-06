require_relative "piece.rb"
require_relative "sliding.rb"

class Rook < Piece
    include Slideable

    
    
    def move_dirs 
        [[1,0],[0,1], [0, -1],[-1,0]]
    end
end