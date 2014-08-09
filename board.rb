require 'pp'
require_relative 'player'

class Board
  attr_accessor :gameboard

  def initialize
    @player1 = Player.new
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

  def take_turn(player)
    puts "Where do you want to go? Columns 1-7"
    answer = gets.chomp.to_i

      if gameboard[6][answer - 1] == "O"
        gameboard[6][answer - 1] = player.symbol
      elsif gameboard[5][answer-1] == "O"
        gameboard[5][answer - 1] = player.symbol
      elsif gameboard[4][answer-1] == "O"
        gameboard[4][answer - 1] = player.symbol
      elsif gameboard[3][answer-1] == "O"
        gameboard[3][answer - 1] = player.symbol
      elsif gameboard[2][answer-1] == "O"
        gameboard[2][answer - 1] = player.symbol
      elsif gameboard[1][answer-1] == "O"
        gameboard[1][answer - 1] = player.symbol
      elsif gameboard[0][answer-1] == "O"
        gameboard[0][answer - 1] = player.symbol
      end
  end


end
