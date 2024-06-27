# frozen_string_literal: true

# lib/calculator.rb
class Calculator
  def add(str)
    return 0 if str.empty?

    if str.start_with?('//')
      delimiter, str = str.split("\n", 2)
      delimiter = Regexp.escape(delimiter[2..])
    else
      delimiter = ",|\n"
    end

    numbers = str.split(/#{delimiter}/).map(&:to_i)
    negative_numbers = numbers.select(&:negative?)

    raise "negative numbers are not allowed: #{negative_numbers.join(', ')}" unless negative_numbers.empty?

    numbers.sum
  end
end
