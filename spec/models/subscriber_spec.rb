require 'spec_helper'

describe Subscriber do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Subscriber.create!(@valid_attributes)
  end
end
