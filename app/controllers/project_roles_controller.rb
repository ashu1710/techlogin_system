class ProjectRolesController < ApplicationController
  before_action :set_project_role

  def index
    @project_roles = ProjectRole.all
  end
  
  def create
    @project_role = ProjectRole.new(project_role_params)

    if @project_role.save!
      redirect_to project_roles_path
    else
      flash[:alert] = 'Project Type name not valid'
      redirect_to project_roles_path
    end
  end

  def edit
    redirect_to action: 'index', id: params[:id]
  end

  def update
    if @project_role.update(project_role_params)
      redirect_to project_roles_path
    else
      flash[:alert] = 'Project Type name not valid'
      redirect_to project_roles_path
    end
  end

  def destroy
    @project_role.destroy
    redirect_to project_roles_path
  end

  private
    def set_project_role
      if params[:id].present?
        @project_role = ProjectRole.find_by("id = ?", params[:id])
      else
        @project_role = ProjectRole.new
      end
    end

    def project_role_params
      params.require(:project_role).permit(:name, :can_view_eod, :receive_eod_mail)
    end
end
