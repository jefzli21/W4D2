require 'singleton'
require_relative "piece.rb"

class NullPiece < Piece
    include Singleton

    def initialize

        @color = nil
        @board = nil
        @pos = nil
    end
    
    def empty?
        true
    end

end