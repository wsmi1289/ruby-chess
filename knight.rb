class Knight < Piece
  attr_accessor :row, :column, :color, :type
  def initialize(row, column, color, type="H ")
    super
  end

#################################
# Legal knight moves
# Moves in l formation 2 by 1 squares
####
  def legal(coords)
    offsets = [ [1, 2], [-1, 2], [1, -2], [-1, -2], [2, 1], [-2, 1], [2, -1], [-2, -1] ]
    moves = []
    offsets.each do |offset|
      move = [@row+offset[0], @column+offset[1]]
      moves << move
    end
    #loop through possible moves
    moves.each do |move|
      #if chosen coords = moves array coords check if occupied
      if coords[0] === move[0] && coords[1] === move[1]
        return occupied?(coords)
      else
        next
      end
    end
    return false  
  end

end