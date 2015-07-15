class FoodsController < ApplicationController
  def index
      @foods = Food.search(params[:search]).order(params[:sort] + " " + params[:direction]).paginate(:page => params[:page], :per_page => 7)
  end
end
