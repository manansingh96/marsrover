require 'spec_helper'

RSpec.describe InputParser do
  subject do
    described_class.new(FILE_FIXTURE_PATH + "/input.txt")
  end

