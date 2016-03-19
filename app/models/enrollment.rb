class Enrollment < ActiveRecord::Base
	belongs_to :user
	belongs_to :course
	
	def Course.search(search)
		where("name LIKE ?", "%#{search}%")
	end
end
