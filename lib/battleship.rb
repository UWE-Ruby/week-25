require_relative 'states/setup_state'

class Battleship

  attr_accessor :players
  attr_accessor :ships
  attr_accessor :ship_positions

  attr_reader :game_is_over
  attr_reader :game_has_started

  def game_is_over?
    @game_is_over
  end

  def game_has_started?
    @game_has_started
  end

  def initialize
    @game_is_over = false
    @players = []
    @ship_positions = {}
  end

  include SetupState

end
