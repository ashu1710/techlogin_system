class UserRolesController < ApplicationController
  before_action :set_user_role
  def index
    @roles = UserRole.all
  end
  def new
  end
  def create
    @userrole = UserRole.new(user_role_params)
    
    if @userrole.save!
      redirect_to user_roles_path
    end
  end
  
  def edit
    redirect_to action: 'index', id: params[:id]
  end
  def update
    if @userrole.update(user_role_params)
      redirect_to user_roles_path
    else
      redirect_to user_roles_path
    end
  end
  def destroy
    @userrole.destroy
   
    redirect_to user_roles_path
  end
  private
  def set_user_role
    if params[:id].present?
      @userrole = UserRole.find_by("id = ?", params[:id])
    else
      @userrole = UserRole.new
    end
  end

  def user_role_params
    params.require(:user_role).permit(:name)
  end
end
