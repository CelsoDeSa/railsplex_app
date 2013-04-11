class Recipe < ActiveRecord::Base
  belongs_to :user
  attr_accessible :recipe, :title, :user_id
  validates :recipe, :title, presence: true
end
