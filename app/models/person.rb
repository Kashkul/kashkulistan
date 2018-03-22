class Person < ApplicationRecord

	#photo uploader using carrierwave
	mount_uploader :photo, PersonPhotoUploader

	#make_rows takes all instances of people in the database and organizes them into groups of designated size, 
	#which allows the front-end to easily format them into rows using the tile format.
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

	def self.group_by_category(array_of_categories)
		#define empty array for all people
		people_array = []
		#Loop through inputted categories, making an array for each and adding it to the people_array
		array_of_categories.each do |category|
			people_array << make_categorized_array(category)
		end
		return people_array
	end

	private
	def self.make_categorized_array(category)
		categorized_array = []
		category_members = find_by_category(category)
		category_members.each do |member|
			categorized_array << member
		end
		return categorized_array
	end

	def self.find_by_category(category)
		category_members = self.where(category: category)
		return category_members
	end
end
