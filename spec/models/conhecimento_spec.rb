require 'spec_helper'

describe Conhecimento do
  before(:each) do
    @valid_attributes = {
      :titulo => "value for titulo",
      :texto => "value for texto"
    }
  end

  it "should create a new instance given valid attributes" do
    Conhecimento.create!(@valid_attributes)
  end
end
