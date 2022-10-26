class QuestionGenerator

  # Generate a random number between 1 and 20.
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def question
    question = "What is #{@num1} plus #{@num2}?"
  end

  def answer
    answer = @num1 + @num2
  end

end