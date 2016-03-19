class Course < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	
	has_many :coursesubjects
	has_many :subjects, through: :coursesubjects
	
	has_many :enrollments
	has_many :users, through: :enrollments
	
	def self.search(search)
		where("name LIKE ?", "%#{search}%")
	end
end
