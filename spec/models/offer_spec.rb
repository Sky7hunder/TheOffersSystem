require 'spec_helper'
require 'offer'

describe Offer do
  it "is created correct" do
    offer = Offer.new(author: 'Ash', title: 'Football challenge', description: 'dfjgjflk ldfkjgklfd lkjdfg fg')
    offer.author.should == 'Ash'
  end
end