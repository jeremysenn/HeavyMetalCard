require File.dirname(__FILE__) + '/../spec_helper'

describe WorkstationCamera do
  it "should be valid" do
    WorkstationCamera.new.should be_valid
  end
end
