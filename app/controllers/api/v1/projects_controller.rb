class Api::V1::ProjectsController < ApplicationController
		def index
		#Divide all projects into two sets for column formatting in Vue app.
		@projects = Project.make_columns
		render json: @projects
	end
end
