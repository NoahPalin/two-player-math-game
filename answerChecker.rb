class AnswerChecker

  def initialize (answer, correctAnswer)
    @userAnswer = answer.to_i
    @correctAnswer = correctAnswer
  end

  def validateAnswer
    if @userAnswer == @correctAnswer
      return "Great work, correct!"
    else 
      return "Come on, this is simple addition... wrong."
    end
  end

  def pointBoolean
    if @userAnswer == @correctAnswer
      return true
    else 
      return false
    end
  end
end