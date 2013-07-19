class Define < ActiveRecord::Base
  attr_accessible :definition, :term, :image, :relevance, :category, :user_id
  mount_uploader :image, ImageUploader
  belongs_to :user
  validates :definition, :term, :relevance, :category, presence: true
  validates :term, uniqueness: true

  	def self.text_search(query)
	  if query.present?
	    where("term @@ :q or category @@ :q or definition @@ :q", q: query) #.order(:term)
	  else
	    scoped
	  end
	end
end
