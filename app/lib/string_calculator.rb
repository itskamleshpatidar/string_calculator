# lib/string_calculator.rb
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.length == 1

    delimiter, numbers = extract_delimiter(numbers)
    split_numbers(numbers, delimiter).map(&:to_i).reduce(:+)
  end

  private

  def self.split_numbers(numbers, delimiter)
    numbers.split(delimiter)
  end

  def self.extract_delimiter(numbers)
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers.split("\n", 2).last
    else
      delimiter = /,|\n/
    end
    [delimiter, numbers]
  end
end
