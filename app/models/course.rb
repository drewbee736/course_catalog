class Course < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :subject_id, presence: true
	
	belongs_to :subject
	
	has_many :enrollments
	has_many :users, through: :enrollments
	
	def self.search(search)
		where("name LIKE ?", "%#{search}%")
	end
end
