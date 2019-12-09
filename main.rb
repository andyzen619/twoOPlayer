require './game'

game = Game.new();

turns = 1;

while !game.isEndOfGame || turns < 10
  game.turn.askQuestion()
  game.getScore()
  turns += 1
end