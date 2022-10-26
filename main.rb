require "./questionGenerator"
require "./promtUser"

class Main
  attr_accessor :p1Score, :p2Score, :answer

  # Ask the user a question.
  question1 = QuestionGenerator.new
  question1.question

  # Let the user type an answer.
  answer1 = PromtUser.new
  answer1.askUser
  

  
end


