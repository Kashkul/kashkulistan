class Person < ApplicationRecord

	#make_rows takes all instances of people in the database and organizes them into groups of designated size, 
	#which allows the front-end to easily format them into rows using the tile format.
	#TODO: refactor this/projects method to make it DRY.
	def self.make_rows(number)
		#select all people
		people = self.all
		#Make array with all people
		people_array = []
		people.each do |person|
			people_array << person
		end
		#split people_array into subarrays with groups, size of which designated by the argument passed as the number param
		grouped_array = people_array.each_slice(number).to_a
	end
	
end
