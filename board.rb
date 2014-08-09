class Board
  attr_accessor :gameboard

  def initialize
    @gameboard = self.build
  end

  def build
    [["O","O","O","O","O","O","O"],
     ["O","O","O","O","O","O","O"],
     ["O","O","O","O","O","O","O"],
     ["O","O","O","O","O","O","O"],
     ["O","O","O","O","O","O","O"],
     ["O","O","O","O","O","O","O"],
     ["O","O","O","O","O","O","O"]]
  end

end

connect4 = Board.new
