require_relative 'game_is_over_state'

module GameHasStartedState

  def add_player(name)
    puts "Sorry #{name}, you can't play. The game has already started"
  end

  def place_ship(player_name,ship_name,direction,x_position,y_position)
    puts "Sorry #{player_name}, you can't place a ship. The game has already started"
  end

  def shoot(at_player_with_name,x_position,y_position)
    # puts "CHEAT: #{@ship_positions[at_player_with_name].inspect}"

    sunk_ship = @ship_positions[at_player_with_name].find do |ship_name,ship_positions|

      hit_at_position = ship_positions.find do |position|

        if (position.first == x_position and position.last == y_position)
          puts "#{at_player_with_name}'s #{ship_name} has been HIT!"
          true
        else
          puts "MISS!"
          false
        end

      end

      if hit_at_position
        puts "Marking hit #{hit_at_position}"
        @ship_positions[at_player_with_name][ship_name].delete hit_at_position

        if ship_positions.empty?
          true
        else
          false
        end

      end

    end

    if sunk_ship
      puts "YOU HAVE SUNK #{at_player_with_name}'s #{sunk_ship.first}!"
      @ship_positions[at_player_with_name].delete sunk_ship.first
    end

    if @ship_positions[at_player_with_name].empty?
      puts "PLAYER #{at_player_with_name} has been defeated!"
      extend GameIsOverState
    end

  end

end