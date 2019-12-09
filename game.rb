require './player'
require './turn'
require './question'

class Game
  attr_accessor :turn, :endOfGame, :player1, :player2, :questionArr

  def initialize()
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @turn = Turn.new(0, this.player1)

  end
end