class ProjectTypesController < ApplicationController
  before_action :set_project_type

  def index
    @project_types = ProjectType.all
  end
  
  def create
    @project_type = ProjectType.new(project_type_params)

    if @project_type.save!
      redirect_to project_types_path
    else
      flash[:alert] = 'Project Type name not valid'
      redirect_to project_types_path
    end
  end

  def edit
    redirect_to action: 'index', id: params[:id]
  end

  def update
    if @project_type.update(project_type_params)
      redirect_to project_types_path
    else
      flash[:alert] = 'Project Type name not valid'
      redirect_to project_types_path
    end
  end

  def destroy
    @project_type.destroy
    redirect_to project_types_path
  end

  private
    def set_project_type
      if params[:id].present?
        @project_type = ProjectType.find_by("id = ?", params[:id])
      else
        @project_type = ProjectType.new
      end
    end

    def project_type_params
      params.require(:project_type).permit(:name)
    end
end
