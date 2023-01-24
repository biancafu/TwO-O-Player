require './player'
require './question'

class Game
  attr_reader :player1, :player2
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def start
    counter = 1
    while player1.is_alive && player2.is_alive
      #determine current player: odd -> player 1, even -> player 2
      current_player = counter % 2 == 1 ? player1 : player2
      #create a question
      current_question = Question.new
      #display question to users
      puts "#{current_player.name}: #{current_question.question_sentence}"
      #check result
      result = current_question.check_answer
      if !result
        sleep(1)
        current_player.wrong
      else
        sleep(1)
        current_player.correct
      end
      display_life
      counter += 1
    end
  end

  def display_life
    if player1.is_alive && !player2.is_alive || !player1.is_alive && player2.is_alive
      winner = player1.is_alive ? player1 : player2
      puts "#{winner.name} wins with a score of #{winner.lives}/3"
      sleep(1)
      puts "----- GAME OVER ----- \n Good bye!"
    else
      puts "Player1: #{player1.lives}/3 vs Player2: #{player2.lives}/3"
      sleep(1)
      puts "----- NEW TURN -----"
    end
  end

end

