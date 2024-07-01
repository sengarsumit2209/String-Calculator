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

    context 'when input contains a different delimiter than ,' do
      it 'returns the sum of the numbers' do
        expect(@string_calculator.add("//;\n1;2")).to eq(3)
      end
    end

    context 'when string contains negative numbers' do
      it 'raises an exception listing negative numbers in message' do
        expect { @string_calculator.add("1,-2,-3,4") }.to raise_error(StandardError, "negative numbers not allowed: -2, -3")
      end
    end

    context 'when string contains negative numbers and different delimiter' do
      it 'raises an exception listing negative numbers in message' do
        expect { @string_calculator.add("//;\n2;-4;-1") }.to raise_error(StandardError, "negative numbers not allowed: -4, -1")
      end
    end

    context 'when string contains numbers separated by multiple spaces' do
      it 'returns the sum of the numbers' do
        expect(@string_calculator.add("1,   5,   7")).to eq(13)
      end
    end

    context 'when input contains a different delimiter which is *' do
      it 'returns the multiplication of the numbers' do
        expect(@string_calculator.add("//*\n1*2*5")).to eq(10)
      end
    end
  end
end
