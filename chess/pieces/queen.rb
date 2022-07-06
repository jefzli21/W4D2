require_relative "piece.rb"
require_relative "sliding.rb"

class Queen < Piece
    include Slideable
    
end