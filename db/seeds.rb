User.delete_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: "Bob", password: "drew")

require './lib/JsonFiles.rb'
require 'rubygems'
require 'json'

subject_json = File.read("./lib/subject.json")
subject = JSON.parse(subject_json)

course_json = File.read("./lib/course.json")
course = JSON.parse(course_json)

instructor_json = File.read("./lib/instructor.json")
instructor = JSON.parse(instructor_json)

#subject = JsonFiles.subjectJson
#course = JsonFiles.courseJson
#instructor = JsonFiles.instructorJson

(0..subject.length-1).each {|i| Subject.create(name: subject[i]["name"])}
(0..course.length-1).each {|i| Course.create(name: course[i]["name"])}
(0..instructor.length-1).each {|i| Instructor.create(first_name: instructor[i]["first"], last_name: instructor[i]["last"])}
