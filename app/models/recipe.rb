class Recipe < ActiveRecord::Base
  belongs_to :user
  attr_accessible :recipe, :title, :user_id
  validates :recipe, :title, presence: true

  #before_save :get_user_for_definition

    #def get_user_for_definition
	#	self.user_id = current_user.id
	#	self.save
	#end
end
