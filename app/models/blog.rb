class Blog < ActiveRecord::Base

   attr_accessible :title, :summary, :keywords, :published 
   # In rails 3, if the above line is not written, then we get MassAssignment error
   # which means that we can't mass-assign the attributes of this Model that are not
   # specified in the above line.
	
	# validations
	validates :title, presence: :true
	validates :summary, presence: :true
	validates :keywords, presence: :true
	validates :published, presence: :true

	has_many :blog_posts

end
