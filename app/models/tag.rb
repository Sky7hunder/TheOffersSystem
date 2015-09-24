class Tag < ActiveRecord::Base
  has_many :offers, through: :offer_tags, dependent: :destroy
  has_many :offer_tags

  validates :name, presence: true
end
