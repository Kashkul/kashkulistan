class ProjectsController < ApplicationController
	layout 'cmslayout'
	before_action :authenticate_admin!, :find_project, only: [:show, :edit, :update, :destroy]
	
	def index
		@projects = Project.order("id ASC")
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			redirect_to @project, notice: "Project created"
		else
			render 'new'
		end
	end

	def edit
	end

	def show
	end

	def update
		if @project.update(project_params)
			redirect_to @project, notice: "Project updated"
		else
			render 'edit'
		end
	end

	def destroy
    @project.destroy
    redirect_to projects_path, notice: "Project deleted"
	end

	private

	def project_params
		params.require(:project).permit(:name, :description, :authors, :url, :photo)
	end

	def find_project
		@project = Project.find(params[:id])
	end

end
