class Project < ApplicationRecord

	#This functions in the same way as the make_rows method for people - It groups the projects into segments easily formatted by the vue app.
	#TODO: refactor this/people method to make it DRY.
	def self.make_rows(number)
		#select all projects
		projects = self.all
		#Make array with all projects
		projects_array = []
		projects.each do |project|
			projects_array << project
		end
		#split projects_array into subarrays with groups, size of which designated by the argument passed as the number param
		grouped_array = projects_array.each_slice(number).to_a
	end

end
