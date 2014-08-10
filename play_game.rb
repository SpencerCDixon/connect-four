require_relative 'player'
require_relative 'board'


connect4 = Board.new
while true

# Shows board Initially
connect4.show_board_guide
connect4.show_board
sleep(1)
# Player 1 takes turn
connect4.take_turn1
connect4.show_board
# Player 2 takes turn
connect4.take_turn2
connect4.show_board


end
