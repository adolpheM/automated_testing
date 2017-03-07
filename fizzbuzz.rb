require 'rspec'

class Fizzbuzz
  def output(number)
    if ((number % 5 == 0) && (number %3 == 0))
      return "fizzbuzz"  
    elsif number %3 == 0
      return "fizz"
    elsif number % 5 == 0
      return "buzz" 
    else 
      return number
    end 
  end

  def go
    (1..100).each do |number|
      puts output(number)
    end
  end
end

RSpec.describe Fizzbuzz do
  describe '#output' do
    it 'should return 1 if given 1' do
      fb = Fizzbuzz.new
      expect(fb.output(1)).to eq(1)
    end

    it 'should return 2 if given 2' do 
      fb = Fizzbuzz.new
      expect(fb.output(2)).to eq(2)
    end

    it 'should return fizz if divisible by 3' do
      fb = Fizzbuzz.new
      expect(fb.output(6)).to eq("fizz")
    end 

    it 'should return buzz if divisible by 5' do 
      fb = Fizzbuzz.new
      expect(fb.output(10)).to eq("buzz")
    end

    it 'should return fizzbuzz if divisible by 3 and 5' do
      fb = Fizzbuzz.new
      expect(fb.output(30)).to eq("fizzbuzz")
    end 
  end
end 