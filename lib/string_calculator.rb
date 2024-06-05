require 'byebug'
class StringCalculator
  def add(input_string)
    return 0 if input_string.empty?
    symbol = '+'
    
    numbers = get_numbers_from_string(input_string)
    check_for_negatives(numbers)

    #using inject by passing the symbol variable, which can be dynamic if required
    numbers.inject(0, symbol.to_sym)
  end

  private

  def get_numbers_from_string(input_string)
    delimiter, numbers = get_delimeter_and_numbers(input_string)
    numbers = numbers.split(delimiter).map(&:to_i)
  end

  def get_delimeter_and_numbers(input_string)
    delimiter = ","

    if input_string.start_with?("//")
      delimiter = input_string[2]
      input_string = input_string.split("\n", 2).last
    end
    [delimiter, input_string]
  end

  def check_for_negatives(numbers)
    negatives = numbers.select { |num| num < 0 }
    raise StandardError, "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
  end
end
