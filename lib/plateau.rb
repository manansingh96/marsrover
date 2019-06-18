class Plateau
  attr_accessor :x, :y

  def initialize(x, y)
    self.x = x
    self.y = y
  end

  def inside_plateau_grid(final_coordinates)
    final_coordinates.x < x ||
    final_coordinates.y < y ||
    final_coordinates.x > 0 ||
    final_coordinates.y > 0
  end
end