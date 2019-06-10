class Position
  attr_accessor :x, :y, :orientation

  DIRECTION_TO_ORIENTATION = {
      "N" => 1,
      "E" => 2,
      "S" => 3,
      "W" => 4
  }

  def initialize(x, y, direction = nil)
    self.x = x
    self.y = y
    self.orientation = DIRECTION_TO_ORIENTATION[direction]
  end

  def turn_left
    self.orientation = orientation == 1 ? 4 : orientation - 1
  end

  def turn_right
    self.orientation = orientation == 4 ? 1 : orientation + 1
  end

  def move
    case orientation
    when 1
      self.y += 1
    when 2
      self.x += 1
    when 3
      self.y -= 1
    when 4
      self.x -= 1
    end
  end
end
