class Api::V1::PeopleController < ApplicationController
	def index
		#This returns all people in the database, grouped by assigned category.
		@people = Person.group_by_category(['Researcher', 'Visiting', 'Director'])
		render json: @people
	end
end
