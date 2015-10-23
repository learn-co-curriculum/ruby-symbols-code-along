require_relative 'spec_helper'
require_relative '../lib/second_challenge.rb'


describe "#second_challenge" do 
  it "accesses the hashes value using bracket notation" do 
    expect(second_challenge[:burgers]).to include("great")
  end

  it "does not access the hash without using a symbol" do 
    expect(second_challenge[burgers]).to_not include("great")
  end
end