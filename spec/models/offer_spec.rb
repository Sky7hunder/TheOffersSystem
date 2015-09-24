require 'rails_helper'

RSpec.describe Offer, type: :model do
  context "tags massive" do
    before(:each) do
      @offer = Offer.create(author:'Ash', title: 'Something important', description: 'Lorem ipsum. Lorem ipsum.', all_tags: 'tag1, tag2')
    end

    it "splits by coma" do
      tag1 = 'tag1'
      expect(@offer.tags.first.name).to eq(tag1)
    end

    it "delete spaces" do
      tag1 = 'tag1'
      tag2 = 'tag2'
      expect(@offer.tags.map(&:name)).to eq([tag1, tag2])
    end

  end
end