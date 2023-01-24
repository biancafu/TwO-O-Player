class Player
  attr_accessor :lives, :name
  def initialize(name)
    @name = name
    @lives = 3
  end

  def is_alive
    if lives > 0
      return true
    else 
      return false
    end
  end

  def wrong
    puts "#{name}:  Seriously? No!"
    # new_lives = lives - 1
    # lives = new_lives
  end

  def correct
    puts "#{name}:  YES! You are correct!"
  end

end
