class Subject < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :id, presence: true, uniqueness: true
	
	has_many :coursesubjects
	has_many :courses, through: :coursesubjects
end
