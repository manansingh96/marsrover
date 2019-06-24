# frozen_string_literal: true

require 'spec_helper'

RSpec.describe InputParser do
  let(:commands) { %w[L M L M L M L M M] }

  subject do
    described_class.new(FILE_FIXTURE_PATH + '/input.txt')
  end

  it 'sets top right x' do
    expect(subject.top_right_x).to eq(5)
  end

  it 'sets top right y' do
    expect(subject.top_right_y).to eq(5)
  end

  it 'parse commands' do
    expect(subject.parse_commands('LMLMLMLMM')).to eq(commands)
  end

  it 'parse coordinates' do
    expect(subject.parse_coordinates('1 3 N')).to eq(nil)
  end
end
