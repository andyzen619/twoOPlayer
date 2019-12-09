require './player'
require './turn'
require './question'

class Game
  attr_accessor :turn, :endOfGame, :player1, :player2, :questionArr

  def initialize()
    @turn = Turn.new(0)
    @player1 = Player.new('Player 1')
    @lives = 3
  end
end