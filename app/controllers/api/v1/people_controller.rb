class Api::V1::PeopleController < ApplicationController
	def index
		#This will return a collection of all people in the database, divided into groups of threes.
		#The triple grouping allows the front end to easily arrange them in the tile layout.
		@people = Person.make_rows
		render json: @people
	end
end
