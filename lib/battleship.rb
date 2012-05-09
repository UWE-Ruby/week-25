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
  
  def add_player(name)
    
    if game_has_started?
      puts "Sorry #{name}, you can't play. The game has already started"
      return
    end
    
    @players << name
    @ship_positions[name] = {}
  end
  
  def place_ship(player_name,ship_name,direction,x_position,y_position)
    
    if game_is_over?
      puts "GAME IS OVER! Start a new game!"
      return
    end
    
    if game_has_started?
      puts "Sorry #{player_name}, you can't place a ship. The game has already started"
      return
    end
    
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
    
    if game_is_over?
      puts "GAME IS OVER! Start a new game!"
      return
    end
    
    @game_has_started = true
    
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
      @game_is_over = true
    end
    
  end
  
end
