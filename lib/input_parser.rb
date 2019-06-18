require_relative 'position'
require_relative 'plateau'

class InputParser
  attr_accessor :inputs, :top_right_corner
  def initialize(filename)
    self.inputs = File.read(filename).split("\n").map(&:strip)
    self.top_right_corner = Plateau.new(top_right_x, top_right_y)
  end

  def top_right_x
    @inputs[0].split(' ')[0].to_i
  end

  def top_right_y
    @inputs[0].split(' ')[1].to_i
  end

  def run_rovers
    index = 1
    while index < @inputs.length
      rover = rover_init(index)
      rover.launch_mission
      index += 2
    end
  end

  def rover_init(index)
    Rover.new(
        parse_coordinates(inputs[index]),
        parse_commands(inputs[index+1]),
        top_right_corner
    )
  end

  def parse_commands(input)
    input.split("")
  end

  def parse_coordinates(index)
    Position.new(
        index.split(" ")[0].to_i,
        index.split(" ")[1].to_i,
        index.split(" ")[2]
    )
  end
end