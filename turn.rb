class Turn 

  attr_accessor :turnNumber, :player, :question

  def initialize(turnNumber, player, question)
    @turnNumber = turnNumber
    @player = player
    @question = question
  end

  #Prints question for the player of the current turn and evaluate's the input.
  def askQuestion()
    puts "#{self.player.name}: #{self.question.question}"
    answer = self.player.getInput()
    
    #Decrenents number of lives if answer is wrong
    if answer.to_i != self.question.solution()
      self.player.loseLife()
      puts "#{self.player.name}: Seriously? No!"
    else
      puts "#{self.player.name}: YES! You are correct"
    end
  end
end