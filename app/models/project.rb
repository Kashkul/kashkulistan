class Project < ApplicationRecord

	#photo uploader using carrierwave
	mount_uploader :photo, ProjectPhotoUploader

	#This method splits all projects into two groups
	#grouping allows frontend Vue app to easily format into columns.
	def self.make_columns
		#select all projects
		projects = self.all
		#Make array with all projects
		projects_array = []
		projects.each do |project|
			projects_array << project
		end
		#Take projects array, and split into two sub arrays
		grouped_array = projects_array.each_slice( (projects_array.size/3.0).round ).to_a
	end

end
