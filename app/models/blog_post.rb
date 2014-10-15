class BlogPost < ActiveRecord::Base
	
	attr_accessible :title, :description, :keywords, :published, :published_at, :author, :blog_id
   # In rails 3, if the above line is not written, then we get MassAssignment error
   # which means that we can't mass-assign the attributes of this Model that are not
   # specified in the above line.

	# Association
	belongs_to :blog
   has_many :comments

	# Validations
	validates :title, :presence => true
	validates :description, :presence => true
	validates :author, :presence => true
	validates :published_at, :presence => true, :if => Proc.new { |bp| bp.published? }
	validates :blog_id, :presence => true
end
