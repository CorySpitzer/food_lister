class FoodsController < ApplicationController
  def index
    @foods = Food.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 7)
    respond_to do |format|
      format.html {render :index }
      format.js
    end
  end

  def new
    @food = Food.new()
  end

  def edit
# binding.pry
    @food = Food.find params[:id]
    respond_to do |format|
      # format.html
      format.js
    end
  end

  def create
    @food = Food.new(food_params)
    @foods = Food.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 7)
    if @food.save
      respond_to do |format|
        format.html {redirect_to foods_path }
        format.js
      end
    else
      flash[:notice] = "Please fill everything out!"
      respond_to do |format|
        format.html {redirect_to foods_path }
        format.js
      end
    end
  end

  private
  def sort_column
    Food.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w[asc desc].include?(  params[:direction]) ? params[:direction] : "asc"
  end

  def food_params
    params.require(:food).permit(:name, :serving, :calories)
  end

end
