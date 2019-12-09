class Turn 

  attr_accessor :turnNumber, :player, :question

  def initialize(turnNumber, player, question)
    @turnNumber = turnNumber
    @player = player
    @question = question
  end
end