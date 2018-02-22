class ProjectsController < ApplicationController
	before_action :authenticate_admin!
	layout 'cmslayout'
	
	def index
		@projects = Project.all
	end

	def new
		# render layout: "cmslayout"
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

	def show
		@project = Project.find(params[:id])
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
