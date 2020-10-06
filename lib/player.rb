class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def start_game
    puts "player has started the game"
  end

  def quit_game
    puts "player has quit the game"
  end
end