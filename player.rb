class Player
  attr_accessor :name, :input, :lives

  def initialize(name)
    @name = name
    @input = nil
    @lives = 3
  end

  def loseLife()
    self.lives -= 1
  end

  def getInput()
    self.input = gets.chomp
  end
end

# p1 = Player.new("Andy")
# p1.loseLife()
# puts p1.lives
# p1.getInput()
# puts p1.input

