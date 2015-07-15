class FoodsController < ApplicationController
  def index

    @foods = Food.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 7)
  end
  private
  def sort_column
    Food.column_names.include?(params[:sort]) ?   params[:sort] : "name"
  end

  def sort_direction
    %w[asc desc].include?(  params[:direction]) ?   params[:direction] : "asc"
  end

end
