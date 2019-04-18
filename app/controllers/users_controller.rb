class UsersController < ApplicationController
  before_action :find_user, only: [:show, :destroy, :user_reviews]

  def index
    if params[:full_name]
      @user = User.find_by(first_name: params[:full_name].split.first, last_name: params[:full_name].split.last)
      if @user
        redirect_to user_path(@user)
      else
        @error = true
        render :index
      end
    else
      @error = false
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
      if @user.errors.any?
        render :new
      else
      redirect_to users_path
    end
  end

  def user_reviews
  end

  def show
    @destinations = Destination.all
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
