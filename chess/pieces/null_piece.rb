require 'singleton'
require_relative "piece.rb"

class NullPiece < Piece
    include Singleton

    attr_reader :color, :board, :pos

    def initialize

        @color = nil
        @board = nil
        @pos = nil
    end
    
    def empty?
        true
    end

end