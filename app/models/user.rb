class User < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	has_secure_password
	
	has_many :enrollments
	has_many :courses, through: :enrollments

	def self.current_user
		Thread.current[:current_user]
	end
	
	def self.current_user=(usr)
		Thread.current[:current_user] = usr
	end
end
