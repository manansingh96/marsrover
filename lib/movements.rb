class Movements
  attr_accessor :coordinates, :commands

  def initialize(coordinates, commands)
    self.coordinates = coordinates
    self.commands = commands
  end

  def process
    commands.each do |command|
      case command
      when 'L'
        turn_left
      when 'R'
        turn_right
      when 'M'
        move
      end
    end
  rescue NoMethodError
    raise 'Invalid command for movement'
  end

  def turn_left
    coordinates.orientation = coordinates.orientation == 1 ? 4 : coordinates.orientation - 1
  end

  def turn_right
    coordinates.orientation = coordinates.orientation == 4 ? 1 : coordinates.orientation + 1
  end

  def move
    case coordinates.orientation
    when 1
      coordinates.y += 1
    when 2
      coordinates.x += 1
    when 3
      coordinates.y -= 1
    when 4
      coordinates.x -= 1
    end
  end
end