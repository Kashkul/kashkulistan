class AdminController < ApplicationController
	before_action :authenticate_admin!
	layout 'cmslayout'

  def home
  end

end
