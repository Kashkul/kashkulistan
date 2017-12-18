class ProjectsController < ApplicationController

	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)

		if @project.save
			flash[:success] = "Project saved!"
		else
			render 'new'
		end
	end

	def update
	end

	def destroy
	end

	private

	def project_params
		params.require(:project).permit(:name, :description, :authors, :url, :photo)
	end

	def find_project
	end

end
