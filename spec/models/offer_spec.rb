require 'spec_helper'
require 'offer'

describe Offer do
  it 'create' do
    offer = Offer.new(author: 'Ash', title: 'Football challenge', description: 'dfjgjflk ldfkjgklfd lkjdfg fg')
    offer.author.should == 'Ash'
  end
end