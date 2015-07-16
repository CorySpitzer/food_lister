class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @food = Food.new
    @search_results = Food.search(params[:criteria])
  end
end
