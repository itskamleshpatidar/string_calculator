# lib/string_calculator.rb
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.length == 1
    split_numbers(numbers).map(&:to_i).reduce(:+)
  end

  private

  def self.split_numbers(numbers)
    numbers.split(/,|\n/)
  end
end
