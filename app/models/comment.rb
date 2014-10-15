class Comment < ActiveRecord::Base
   attr_accessible :name, :email, :comment, :approved

	belongs_to :blog_post

	validates :name, presence: true
	validates :email, presence: true
	validates :comment, presence: true

	# This is a scope
	def self.approved
		where("approved = ?", true)
	end

end
