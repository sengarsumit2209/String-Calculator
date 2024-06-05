# TDD without monkey patch for calculator_spec.rb
require 'calculator.rb'

RSpec.describe StringCalculator do
  describe '#add' do
    before do
      @string_calculator = StringCalculator.new
    end
  end
end
