class Person < ApplicationRecord
	#make_rows groups all instances of people into pairs, which allows the front-end to easily format them into two-person rows in the tile format.
	def self.make_rows
		#select all people
		people = self.all
		#Make array with all people
		people_array = []
		people.each do |person|
			people_array << person
		end
		#split people_array into subarrays with groups of two, implicitly returned
		grouped_array = people_array.each_slice(2).to_a
	end
end
