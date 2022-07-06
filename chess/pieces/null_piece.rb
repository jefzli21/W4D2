require 'singleton'
require_relative "piece.rb"

class NullPiece < Piece
    include Singleton

    def initialize#(color, board, pos)
        
        @color = nil
        @board = nil
        @pos = nil
    end

end