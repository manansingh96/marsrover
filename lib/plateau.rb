class Plateau
  attr_accessor :x, :y

  def initialize(input)
    self.x = input[0].to_i
    self.y = input[1].to_i
  end

  def inside_plateau_grid(final_coordinates)
    final_coordinates.x < x ||
    final_coordinates.y < y ||
    final_coordinates.x > 0 ||
    final_coordinates.y > 0
  end
end