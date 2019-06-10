# frozen_string_literal: true

class Rovers
  def initialize(rover_id, coordinates, commands, x_top_right, y_top_right)
    @rover_id = rover_id
    @coordinates = coordinates
    @commands = commands
    @x_top_right = x_top_right
    @y_top_right = y_top_right
  end

  def launch_mission
    Movements.new(@coordinates, @commands)
    finish_mission
  end

  def finish_mission
    if !outside_plateau_grid
      final_output
    else
      puts 'Rover ID ' + @rover_id.to_s + ' is out of grid.'
    end
  end

  def final_output
    orientation = [nil, 'N', 'E', 'S', 'W']
    puts @coordinates[:x_coordinate].to_s + ' ' +
         @coordinates[:y_coordinate].to_s + ' ' +
         orientation[@coordinates[:orientation]]
  end

  def outside_plateau_grid
    if (@coordinates[:x_coordinate] > @x_top_right) || (@coordinates[:x_coordinate] < 0) || (@coordinates[:y_coordinate] > @y_top_right) || (@coordinates[:y_coordinate] < 0)
      return true
    end

    false
  end
end
