class DaysController < ApplicationController

def index
  @user = current_user
  @days = Day.all
end

def new
  @user = current_user
  @days = @user.days.new()
end

def create
  @user = current_user
  @days = @user.days.create(date: DateTime.now)
  respond_to do |format|
    format.html {redirect_to user_path(current_user)}
    format.js
  end
end

end
