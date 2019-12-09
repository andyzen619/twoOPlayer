require './player'
require './turn'
require './question'
require 'pry'

class Game
  attr_accessor :turnNumber, :turn, :endOfGame, :player1, :player2

  def initialize()
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @turnNumber = 1
    # binding.pry
    @turn = Turn.new(@turnNumber, @player1, Question.new(rand(1..100), rand(1..100)))
    @endOfGame = false
  end

  def nextTurn()
    self.turnNumber += 1 

    if self.turn.player == self.player1
      self.turn = Turn.new(turnNumber, self.player2, Question.new(rand(1..100), rand(1..100)))
    else 
      self.turn = Turn.new(turnNumber, self.player1, Question.new(rand(1..100), rand(1..100)))
    end
  end

  def getScore()
    if self.player1.lives <= 0
      self.endOfGame = true
    end
    if self.player2.lives <= 0
      self.endOfGame = true
    end
    puts "#{self.player1}: #{self.player1.lives}/3 vs #{self.player2}: #{self.player2.lives}/3"
  end
end

# g1 = Game.new()
# puts g1.turn.question.question
# puts g1.turn.question.solution
# puts g1.turn.player.name

# g1.nextTurn()
# puts g1.turn.question.question
# puts g1.turn.question.solution
# puts g1.turn.player.name

