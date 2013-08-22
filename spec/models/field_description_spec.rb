require File.dirname(__FILE__) + '/../spec_helper'

describe FieldDescription do
  it "should be valid" do
    FieldDescription.new.should be_valid
  end
end
