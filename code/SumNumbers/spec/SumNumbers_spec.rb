require 'spec_helper'
require './SumNumbers'

describe SumNumbers do
  it "should have zero sum to begin with" do
    sn = SumNumbers.new
    sn.sum.should == 0
  end
  it "should have given initial sum" do
    sn = SumNumbers.new(3)
    sn.sum.should == 3
  end
  it "should add every new number to the sum" do
    sn = SumNumbers.new
    sn.add(5)
    sn.sum.should == 5
  end
  it "should add all new numbers to initial sum" do
    sn = SumNumbers.new(2)
    sn.add(2)
    sn.sum.should == 4
  end
  it "should subtract given value" do
    sn = SumNumbers.new(5)
    sn.sub(3)
    sn.sum.should == 2
  end
  it "should be positive if sum is more ther zero" do
    sn = SumNumbers.new(1) 
    sn.should be_positive
  end
  it "should not be positive if sum is lesser or equal zero" do
    sn = SumNumbers.new(-1) 
    sn.should_not be_positive
  end
end
