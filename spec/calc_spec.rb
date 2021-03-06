require 'rspec'
require 'spec_helper'
require_relative 'calc.rb'

describe Calc do
  
 describe '#initialize' do
    it 'creates an empty array' do
	Calc.new.ar.should == []
   end
  end
  
  describe '#get' do
   it 'makes a new array out of submitted values' do
     c = Calc.new
     c.get(1,2,3).should == [1,2,3]
   end
  end

  describe '#plus' do
   it 'returns the sum of all arguments' do
     c = Calc.new
     c.get(1,2)
     c.plus.should == 3
    end
  end

  describe '#minus' do
    it 'substracts all arguments from 0' do
     c = Calc.new
     c.get(1,2)
     c.minus.should == -3
    end
  end
  
  describe '#clear' do
    it 'removes all arguments previosly passed' do
      c = Calc.new
      c.get(1,2,3,4)
      c.clear
      c == []
    end
    end
     
end

