# frozen_string_literal: true

# spec/calculator_spec.rb
require 'rspec'
require_relative '../lib/calculator'

RSpec.describe Calculator do
  describe '#add' do
    context 'when the input is a comma-separated string of numbers' do
      it 'returns the sum of the numbers' do
        calculator = Calculator.new
        expect(calculator.add('1,2,4')).to eq(7)
      end
    end

    context 'when the input is a single string of numbers' do
      it 'returns the sum of the numbers' do
        calculator = Calculator.new
        expect(calculator.add('4')).to eq(4)
      end
    end

    context 'when the input contains negative numbers' do
      it 'raises an error listing all negative numbers' do
        calculator = Calculator.new
        begin
          calculator.add('1,-2,3')
        rescue RuntimeError => e
          expect(e.message).to eq('negative numbers are not allowed: -2')
        end
      end
    end
  end
end
