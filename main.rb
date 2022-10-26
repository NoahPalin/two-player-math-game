require "./questionGenerator"
require "./promtUser"
require "./answerChecker"

class Main
  @player1Score = 3
  @player2Score = 3

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

  # counter is used to determine which player's turn it is.
  counter = 1

  while @player1Score > 0 && @player2Score > 0 do

    # If counter is even, then it's player 2's turn. 
    if counter % 2 == 0
      currentTurn = 2
    else
      currentTurn = 1
    end

    # Ask the user a question.
    question1 = QuestionGenerator.new
    puts "Player #{currentTurn}: #{question1.question}"

    # Let the user type an answer.
    answer1 = PromtUser.new
    userSubmittedAnswer = answer1.askUser
  
    # Check if answer is correct.
    result = AnswerChecker.new(userSubmittedAnswer, question1.answer)
    puts "Player #{currentTurn}: #{result.validateAnswer}"

    # Increment the current score for the correct player. 
    if currentTurn == 2
      if (!result.pointBoolean)
        @player2Score -= 1
      end
    else
      if (!result.pointBoolean)
        @player1Score -= 1
      end
    end

    # End game once a score of 3 points has been reached.
    if @player1Score == 0 || @player2Score == 0
      if @player1Score != 0 
        puts "\nPlayer 1 wins with #{@player1Score}/3 lives remaining!"
      else
        puts "\nPlayer 2 wins with #{@player2Score}/3 lives remaining!"
      end
      puts "------ GAME OVER ------\nGood bye!"
      break
    else
      puts "P1: #{@player1Score} vs P2: #{@player2Score}"
      puts "------ NEW TURN ------"
      counter += 1
    end

  end
end


