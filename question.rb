class Question
  attr_reader :first_number, :second_number, :answer

  def initialize
    @first_number = rand(1..10)
    @second_number = rand(1..10)
    @answer = first_number + second_number
  end

  def question_sentence
    "What does #{first_number} plus #{second_number} equal?"
  end

  def check_answer
    user_input = gets.chomp
    if user_input.to_i == answer
      return true
    else
      return false
    end

    # return true if user_input == answer ?
    # return false
  end

end
