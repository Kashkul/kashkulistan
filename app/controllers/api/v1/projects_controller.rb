class Api::V1::ProjectsController < ApplicationController
		def index
		#This will return a collection of all projects in the database, divided into pairs.
		#The pair grouping allows the front end to easily arrange them in the tile layout.
		@people = Person.make_rows(2)
		render json: @people
	end
end
