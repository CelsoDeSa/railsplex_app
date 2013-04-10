class Define < ActiveRecord::Base
  attr_accessible :definition, :term, :image, :relevance, :user_id
  mount_uploader :image, ImageUploader
  belongs_to :user
  validates :definition, :term, :image, :relevance, presence: true
  validates :term, uniqueness: true

  	def self.text_search(query)
	  if query.present?
	    where("term @@ :q or definition @@ :q", q: query)
	  else
	    scoped
	  end
	end
end
