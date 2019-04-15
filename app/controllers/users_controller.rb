class UsersController < ApplicationController
  before_action :find_user, only: [:show, :create, :destroy]

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


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
