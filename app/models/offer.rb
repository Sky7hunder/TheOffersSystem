class Offer < ActiveRecord::Base
  has_many :comments

  validates :author, presence: true
  validates :title, presence: true
  validates :description, presence: true
end
