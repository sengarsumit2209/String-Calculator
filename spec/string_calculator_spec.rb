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
  end
end
