require 'rails_helper'
require 'FizzBuzz'

RSpec.feature "Fizzbuzz" do
  context 'with a number divisible by 3' do
    it 'should return Fizz' do
      expect(FizzBuzz.check(3)).to eq("Fizz")
    end
  end
  
  context 'with a number divisible by 5' do
    it 'should return Bizz' do
      expect(FizzBuzz.check(5)).to eq("Buzz")
    end
  end
  
  context 'with a number divisible by both 5 and 3' do
    it 'should return FizzBuzz' do
      expect(FizzBuzz.check(15)).to eq("FizzBuzz")
    end
  end
  
  context 'with a number not divisible by 5 or 3' do
    it 'should return an empty string' do
      expect(FizzBuzz.check(4)).to eq("")
    end
  end
  
  context 'with a negative number' do
    it 'should return the same as a positive number' do
      expect(FizzBuzz.check(-3)).to eq("Fizz")
    end
  end
  
  context 'with a non-integer value' do
    
  end
end
