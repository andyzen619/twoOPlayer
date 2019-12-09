class Turn 

  attr_accessor :turnNumber, :player, :question

  def initialize(turnNumber, player, question)
    @turnNumber = turnNumber
    @player = player
    @question = question
  end

  def askQuestion()
    puts "#{self.player.name}: #{self.question}"
    answer = self.player.getInput()
    if answer != self.question.solution()
      self.player.loseLife()
      puts "#{self.player.name}: Seriously? No!"
    else
      puts "#{self.player.name}: YES! You are correct"
    end
  end
end