require_relative 'spec_helper'
require_relative '../lib/first_challenge.rb'


describe "#first_challenge" do 
  it "accesses the hashes value using bracket notation" do 
    expect(first_challenge[:pizza]).to include("awesome")
  end
end