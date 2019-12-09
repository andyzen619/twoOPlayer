require './game'

game = Game.new();

turns = 1;

while !game.endOfGame && turns < 10
  game.turn.askQuestion()
  game.getScore()
  turns += 1
  game.nextTurn()
  puts "---New Turn---"
end

game.getWinner()
puts "---Game Over---"