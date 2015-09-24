class Offer < ActiveRecord::Base
  has_many :comments
  has_many :offer_tags
  has_many :tags, through: :offer_tags, dependent: :destroy

  attr_accessor :all_tags

  validates :author, presence: true
  validates :title, presence: true
  validates :description, presence: true

  def all_tags=(names)
    self.tags = names.downcase.split(',').map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def self.tagged_with(tag)
    Tag.find_by_id!(tag).offers
  end
end
