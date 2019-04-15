class UsersController < ApplicationController
  before_action :find_user, only: [:show, :create, :destroy]

  def index
  end



  private

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
