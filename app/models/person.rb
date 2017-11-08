class Person < ApplicationRecord
	#make_rows groups all instances of people into threes, which allows the front-end to easily format them into rows in the tile format.
	def self.make_rows
		#select all people
		people = self.all
		#Make array with all people
		people_array = []
		people.each do |person|
			people_array << person
		end
		#split people_array into subarrays with groups of three, implicitly returned
		grouped_array = people_array.each_slice(3).to_a
	end
end
