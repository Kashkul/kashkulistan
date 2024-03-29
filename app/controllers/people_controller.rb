class PeopleController < ApplicationController
	layout 'cmslayout'
	before_action :authenticate_admin!, :find_person, only: [:show, :edit, :update, :destroy]
	
	def index
		@people = Person.order("id ASC")
	end

	def new
		@person = Person.new
	end

	def create
		@person = Person.new(person_params)
		if @person.save
			redirect_to people_path, notice: "Person created"
		else
			render 'new'
		end
	end

	def edit
	end

	def show
	end

	def update
		if @person.update(person_params)
			redirect_to @person, notice: "Person updated"
		else
			render 'edit'
		end
	end

	def destroy
    @person.destroy
    redirect_to people_path, notice: "Person deleted"
	end

	private

	def person_params
		params.require(:person).permit(:name, :role, :about, :photo, :category)
	end

	def find_person
		@person = Person.find(params[:id])
	end
end
