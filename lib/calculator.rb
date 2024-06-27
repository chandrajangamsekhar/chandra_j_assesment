# frozen_string_literal: true

class Calculator
  def add(str)
    return 0 if str.empty?

    delimiters = /,|\n/
    numbers = str.split(delimiters).map(&:to_i)
    numbers.sum
  end
end
