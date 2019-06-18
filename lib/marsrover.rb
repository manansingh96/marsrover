current_directory = File.join(File.dirname(File.expand_path(__FILE__)))
$LOAD_PATH << current_directory

require_relative 'input_parser'
require_relative 'rovers'
require_relative 'movements'
require_relative 'version'
require_relative 'position'
require_relative 'plateau'

module Marsrover
  module App
    class Error < StandardError; end
  end
end

InputParser.new(ARGV[0]).run_rovers

