require 'spec_helper'

RSpec.describe Rover do
  let(:coordinates) do
    {
        x_coordinate: 1,
        y_coordinate: 2,
        orientation: 1
    }
  end

  let(:commands) { %w[L M L M L M L M M] }

  subject do
    described_class.new(coordinates, commands, )
  end
end
