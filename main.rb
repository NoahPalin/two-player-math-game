require "./questionGenerator"
require "./promtUser"
require "./answerChecker"

class Main
  @player1Score = 0
  @player2Score = 0

  # Ask the user a question.
  question1 = QuestionGenerator.new
  question1.question

  # Let the user type an answer.
  answer1 = PromtUser.new
  userSubmittedAnswer = answer1.askUser
  
  # Check if answer is correct.
  result = AnswerChecker.new(userSubmittedAnswer, question1.answer)
  puts result.validateAnswer
end


