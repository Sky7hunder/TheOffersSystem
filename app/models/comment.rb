class Comment < ActiveRecord::Base
  belongs_to :offer

  validates :author, presence: true
  validates :text, presence: true
end
