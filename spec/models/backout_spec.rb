require File.dirname(__FILE__) + '/../spec_helper'

describe Backout do
  it "should be valid" do
    Backout.new.should be_valid
  end
end
