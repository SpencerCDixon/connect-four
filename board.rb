require 'pp'
require_relative 'player'

class Board
  attr_accessor :gameboard, :player1, :player2

  def initialize
    @player1 = Player.new
    puts
    @player2 = Player.new
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

  def show_board
    pp @gameboard
  end


  def take_turn1
    puts "#{player1.name.capitalize}'s turn. Which column would you like to go?'"
    answer = gets.chomp.to_i

      if gameboard[6][answer - 1] == "O"
        gameboard[6][answer - 1] = player1.symbol
      elsif gameboard[5][answer-1] == "O"
        gameboard[5][answer - 1] = player1.symbol
      elsif gameboard[4][answer-1] == "O"
        gameboard[4][answer - 1] = player1.symbol
      elsif gameboard[3][answer-1] == "O"
        gameboard[3][answer - 1] = player1.symbol
      elsif gameboard[2][answer-1] == "O"
        gameboard[2][answer - 1] = player1.symbol
      elsif gameboard[1][answer-1] == "O"
        gameboard[1][answer - 1] = player1.symbol
      elsif gameboard[0][answer-1] == "O"
        gameboard[0][answer - 1] = player1.symbol
      else
        puts "cant go there"
        take_turn1
      end
  end
  def take_turn2
    puts "#{player2.name.capitalize}'s turn. Which column would you like to go?'"
    answer = gets.chomp.to_i

      if gameboard[6][answer - 1] == "O"
        gameboard[6][answer - 1] = player2.symbol
      elsif gameboard[5][answer-1] == "O"
        gameboard[5][answer - 1] = player2.symbol
      elsif gameboard[4][answer-1] == "O"
        gameboard[4][answer - 1] = player2.symbol
      elsif gameboard[3][answer-1] == "O"
        gameboard[3][answer - 1] = player2.symbol
      elsif gameboard[2][answer-1] == "O"
        gameboard[2][answer - 1] = player2.symbol
      elsif gameboard[1][answer-1] == "O"
        gameboard[1][answer - 1] = player2.symbol
      elsif gameboard[0][answer-1] == "O"
        gameboard[0][answer - 1] = player2.symbol
      else
        puts "Can't go there"
        take_turn2
      end
  end
  def show_board_guide
    puts
    puts "In order to take your turn write a number 1-7."
    puts "It will drop your symbol in place."
    puts "[1,2,3,4,5,6,7] shows the different columns"
    puts
  end
  def check_for_win

  end

end


# Experimenting with trying to figure out to check if someone wins
def array_size(array, x, y)
  if array[y][x] != 'X'
    return 0
  end

  size = 1
  array[y][x] = 'counted tile'

  size = size + array_size(array, x-1, y-1)
  size = size + array_size(array, x, y-1)
  size = size + array_size(array, x+1, y-1)
  size = size + array_size(array, x-1, y)
  size = size + array_size(array, x+1, y)
  size = size + array_size(array, x-1, y+1)
  size = size + array_size(array, x, y+1)
  size = size + array_size(array, x+1, y+1)

  size

end

[["O","O","O","O","O","O","O"],
 ["O","O","O","O","O","O","O"],
 ["O","O","O","O","O","O","O"],
 ["O","O","O","X","O","O","O"],
 ["X","O","O","X","O","O","O"],
 ["X","O","O","X","O","O","O"],
 ["X","O","O","O","O","O","O"]]

def check_column(num)
  counter = 0
  num2 = 0
  if gameboard[num2][num] == 'O'
    

end
