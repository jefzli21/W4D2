require_relative "piece.rb"
require_relative "sliding.rb"

class Bishop < Piece
include Slideable

def move_dirs
    [[1,1],[-1,-1],[-1,1],[1,-1]]

end

    
end