# frozen_string_literal: true

class Movements
  def initialize(coordinates, commands)
    @coordinates = coordinates
    @commands = commands
    process
  end

  def process
    @commands.each do |command|
      case command
      when 'L'
        turn(command)
      when 'R'
        turn(command)
      when 'M'
        move
      else
        puts 'Wrong Input: ' + command
      end
    end
  end

  def turn(turn_direction)
    if turn_direction == 'L'
      @coordinates[:orientation] = (@coordinates[:orientation] - 1) < 1 ? 4 : (@coordinates[:orientation] - 1)
    end
    if turn_direction == 'R'
      @coordinates[:orientation] = (@coordinates[:orientation] + 1) > 4 ? 1 : (@coordinates[:orientation] + 1)
    end
  end

  def move
    if @coordinates[:orientation] == 1
      @coordinates[:y_coordinate] += 1
    elsif @coordinates[:orientation] == 2
      @coordinates[:x_coordinate] += 1
    elsif @coordinates[:orientation] == 3
      @coordinates[:y_coordinate] -= 1
    elsif @coordinates[:orientation] == 4
      @coordinates[:x_coordinate] -= 1
    end
  end
end
