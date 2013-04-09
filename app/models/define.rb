class Define < ActiveRecord::Base
  attr_accessible :definition, :term, :image
  mount_uploader :image, ImageUploader

  	def self.text_search(query)
	  if query.present?
	    where("term @@ :q or definition @@ :q", q: query)
	  else
	    scoped
	  end
	end
end
