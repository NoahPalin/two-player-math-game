class AnswerChecker

  def initialize (answer, correctAnswer)
    @userAnswer = answer.to_i
    @correctAnswer = correctAnswer
  end

  # Either a correct or incorrect message.
  def validateAnswer
    if @userAnswer == @correctAnswer
      return "Great work, correct!"
    else 
      return "Come on, this is simple addition... wrong."
    end
  end

  # Similar to validateAnswer, but used to increment the points of the correct user in main.rb.
  def pointBoolean
    if @userAnswer == @correctAnswer
      return true
    else 
      return false
    end
  end
end