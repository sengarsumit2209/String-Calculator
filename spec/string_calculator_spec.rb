require 'string_calculator.rb'

RSpec.describe StringCalculator do
  describe '#add' do
    before do
      @string_calculator = StringCalculator.new
    end

    context 'when input string is empty' do
      it 'should return 0' do
        expect(@string_calculator.add("")).to eq(0)
      end
    end

    context 'when input is contains a valid input' do
      it 'returns the sum of numbers' do
        expect(@string_calculator.add("1,2,3,4")).to eq(10)
      end
    end
  end
end
