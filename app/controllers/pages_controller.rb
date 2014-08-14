class PagesController < ApplicationController
	def index 
    @user = User.new
    render 'index'
  end
end