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
    numbers.sum
  end
end
