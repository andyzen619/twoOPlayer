class Question

  attr_accessor :question, :summand1, :summand2

  def initialize(summand1, summand2)
    @question = "What is #{summand1} plus #{summand2}?"
    @summand1 = summand1
    @summand2 = summand2
  end

  def solution()
    self.summand1 + self.summand2
  end

end

q1 = Question.new(3, 5)
puts q1.question
puts q1.solution