# frozen_string_literal: true

# lib/calculator.rb
class Calculator
  def add(str)
    return 0 if str.empty?

    delimiters = /,|\n/
    numbers = str.split(delimiters).map(&:to_i)

    negative_numbers = numbers.select(&:negative?)

    raise "negative numbers are not allowed: #{negative_numbers.join(', ')}" unless negative_numbers.empty?

    numbers.sum
  end
end
