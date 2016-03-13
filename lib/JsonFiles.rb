require 'rubygems'
require 'json'

class JsonFiles
	def courseJson
		json = File.read('course.json')
		course = JSON.parse(json)
		return course
	end
	
	def instructorJson
		json = File.read('instructor.json')
		instructor = JSON.parse(json)
		return instructor
	end
	
	def subjectJson
		json = File.read('subject.json')
		subject = JSON.parse(json)
		return subject
	end
end
