class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user,only: [:update]
  def dashboard
  
  end
  def index
    @roles = UserRole.all
    @users = User.all
    @user = User.new
  end
  def new 
    @user = User.new
  end 
  def show
    @user = User.find(params[:id])
  end

  def edit 
    @user = User.find(params[:id])
  end
  def update
    #@user = User.find(params[:id])
    #render plain: params[:user].inspect
    if @user.update!(user_params)
       redirect_to users_path
     else
       redirect_to users_path
     end
  end
  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to users_path
    end
  end
  private
  def user_params
    params.require(:user).permit(:user_role_id)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
