require 'rails_helper'

RSpec.describe OffersController, :type => :controller do

  context "POST create" do
    subject { post :create, offer: {author: 'Ash', title: 'Something important', description: 'Lorem ipsum. Lorem ipsum.', all_tags: 'tag1 tag2'}}

    it "redirects to offer page" do
      expect(subject).to redirect_to("/offers/#{assigns(:offer).id}")
    end

  end
end