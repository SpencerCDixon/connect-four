class Player
  attr_accessor :name, :symbol

  def initialize
    print "What is your name? "
    @name = gets.chomp
    print "What symbol do you want to be? "
    @symbol = gets.chomp
  end

end
