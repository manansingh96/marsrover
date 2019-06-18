class Position
  attr_accessor :x, :y, :orientation

  DIRECTION_TO_ORIENTATION = {
    'N' => 1,
    'E' => 2,
    'S' => 3,
    'W' => 4
  }

  def initialize(x, y, direction = nil)
    self.x = x
    self.y = y
    self.orientation = DIRECTION_TO_ORIENTATION[direction]
  end
end
