require "./questionGenerator"
require "./promtUser"
require "./answerChecker"


# TO-DO loop over this process while the player's scores are less than 3.
class Main
  @player1Score = 0
  @player2Score = 0

  # # Ask the user a question.
  # question1 = QuestionGenerator.new
  # question1.question

  # # Let the user type an answer.
  # answer1 = PromtUser.new
  # userSubmittedAnswer = answer1.askUser
  
  # # Check if answer is correct.
  # result = AnswerChecker.new(userSubmittedAnswer, question1.answer)
  # puts result.validateAnswer

  # # Adjust score if user was correct.
  # if (result.pointBoolean)
  #   @player1Score += 1
  # end

  counter = 1
  while (@player1Score < 3 || @player2Score < 3) do
    # Ask the user a question.
    question1 = QuestionGenerator.new
    question1.question

    # Let the user type an answer.
    answer1 = PromtUser.new
    userSubmittedAnswer = answer1.askUser
  
    # Check if answer is correct.
    result = AnswerChecker.new(userSubmittedAnswer, question1.answer)
    puts result.validateAnswer

    # If counter is odd then it's player 1's turn. 
    if counter % 2 == 0
      if (result.pointBoolean)
        @player2Score += 1
      end
    else
      if (result.pointBoolean)
        @player1Score += 1
      end
    end

    puts "P1: #{@player1Score} vs P2: #{@player2Score}"
    counter += 1
    puts counter
  end
end


