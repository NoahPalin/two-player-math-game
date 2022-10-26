class AnswerChecker

  def initialize (answer, correctAnswer)
    @userAnswer = answer.to_i
    @correctAnswer = correctAnswer
  end

  def validateAnswer
    if @userAnswer == @correctAnswer
      return "Correct!"
    else 
      return "Wrong."
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