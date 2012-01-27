require File.dirname(__FILE__) + '/../spec_helper'

describe Gem do
  it "should be valid" do
    Gem.new.should be_valid
  end
end
