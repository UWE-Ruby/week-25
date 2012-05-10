require_relative 'game_has_started_state'

module SetupState

  def add_player(name)
    @players << name
    @ship_positions[name] = {}
  end

  def place_ship(player_name,ship_name,direction,x_position,y_position)
    horizontal = (direction == :horizontal) ? 1 : 0
    vertical = (direction == :vertical) ? 1 : 0

    positions = []

    if ship_name == :battleship

      positions = [ [ x_position, y_position ], [ x_position + 1 * horizontal, y_position + 1 * vertical ],
        [ x_position + 2 * horizontal, y_position + 2 * vertical ], [ x_position + 3 * horizontal, y_position + 3 * vertical ] ]

    elsif ship_name == :carrier

      positions = [ [ x_position, y_position ], [ x_position + 1 * horizontal, y_position + 1 * vertical ],
        [ x_position + 2 * horizontal, y_position + 2 * vertical ] ]

    else

      positions = [ [ x_position, y_position ], [ x_position + 1 * horizontal, y_position + 1 * vertical ] ]

    end

    ship_positions[player_name][ship_name] = positions
  end

  def shoot(at_player_with_name,x_position,y_position)
    extend GameHasStartedState
    shoot(at_player_with_name,x_position,y_position)
  end

end
