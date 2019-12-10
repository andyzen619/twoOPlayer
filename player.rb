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

