require 'byebug'
class StringCalculator
  def add(input_string)
    return 0 if input_string.empty?

    delimiter = ","
    if input_string.start_with?("//")
      delimiter = input_string[2]
      input_string = input_string.split("\n", 2).last
    end
    numbers = input_string.split(delimiter).map(&:to_i)

    negatives = numbers.select { |num| num < 0 }
    unless negatives.empty?
      raise StandardError, "negative numbers not allowed: #{negatives.join(',')}"
    end

    numbers.sum
  end
end
