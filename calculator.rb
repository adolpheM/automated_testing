require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end


  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def square_root(number)
    return Math.sqrt(number)
  end 
end


RSpec.describe Calculator do
  describe '#subtract' do
    it 'should return the difference between two numbers' do
      calculator = Calculator.new
      expect(calculator.subtract(3,1)).to eq(2)
    end 
  end 

  describe '#multiply' do
    it 'shold return the product of two numbers' do
      calculator = Calculator.new
      expect(calculator.multiply(2,4)).to eq(8)
    end 
  end 

  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new
      expect(calculator.divide(8,2)).to eq(4)
    end 
  end 

  describe '#square' do
    it 'should return the square root of the number' do
      calculator = Calculator.new
      expect(calculator.square(2)).to eq(4)
    end 
  end

  describe '#power' do
    it 'should return the exponent power a number ' do
      calculator = Calculator.new
      expect(calculator.power(4,2)).to eq(16)
    end 
  end 

  describe '#square_root' do
    it 'should return the square root of a number ' do
      calculator = Calculator.new
      expect(calculator.square_root(9)).to eq(3)
    end 
  end 

end 