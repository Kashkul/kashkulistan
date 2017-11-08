class Api::V1::PeopleController < ApplicationController
	def index
		@people = People.all
		render json: @people
	end
end
