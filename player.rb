class Player
  attr_accessor :name, :color

  def initialize
    print "What is your name? "
    @name = gets.chomp
    print "What color do you want to be? "
    @color = gets.chomp
  end

end
