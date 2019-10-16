
class Game

  attr_reader :question, :answer
  attr

  def initialize (player1, player2)
    @Player1 = player1
    @player2 = player2

    @new_question = ""
    @question_answer = 0
    @game_winner = nil
    @player_turn = @Player1
    turn_over()
  end

  def turn_over
    ask_new_question
    @player_turn = change_player(@player_turn)
  end

  def check_answer(question_answer)
    if @question_answer.to_i == question_answer
      return true
    end
    false
  end

  def start
    while !@game_winner
      puts "Player#{@player_turn}s turn to ask a question!"
      print @ask_new_question

      if check_answer(gets.chomp)
        puts "Thats the right answer!"
      else
        puts "Sorry, that's the wrong answer! The correct answer is #{question_answer}! Minus 1 point"
        @player_turn.points -= 1
      end

      puts "Player 1 has #{Player1.points} points and Player 2 has #{Player2.points}"

      if @player_turn.lives == 0
        @game_winner = change_player(@player_turn)
      end
      turn_over()
    end

    puts "The winner is Player#{@player_turn}!"
  end



  private

  def ask_new_question
    first_num = rand(20)
    second_num = rand(20)
    @new_question = "What's #{first_num} + #{second_num} equal?"
    @question_answer = first_num + second_num
  end

  def change_player(player)
    if player == Player1
      return @Player2
    end
    return @Player1
  end

end