class Person < ApplicationRecord
	#photo uploader using carrierwave
	mount_uploader :photo, PersonPhotoUploader

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
