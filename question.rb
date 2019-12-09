class Question

  attr_accessor :question, :summand1, :summand2

  def initialize(summand1, summand2)
    @question = "What is #{summand1} plus #{summand2}?"
    @summand1 = summand1
    @summand2 = summand2
  end

  #Returns the solution of the question
  def solution()
    self.summand1 + self.summand2
  end

end