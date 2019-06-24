class Rover
  attr_accessor :coordinates, :commands, :top_right_corner

  def initialize(coordinates, commands, top_right_corner)
    self.coordinates = coordinates
    self.commands = commands
    self.top_right_corner = top_right_corner
  end

  def launch_mission
    Movements.new(coordinates, commands).process
    finish_mission
  end

  def finish_mission
    top_right_corner.inside_plateau_grid(coordinates) ? final_output : rover_out_of_grid
  end

  def rover_out_of_grid
    puts 'A Rover is out of grid.'
  end

  def final_output
    orientation = [nil, 'N', 'E', 'S', 'W']
    puts "#{coordinates.x} #{coordinates.y} #{orientation[coordinates.orientation]}"
  end
end