class TasksController < ApplicationController

  before_action :authenticate_user!, :only => [:create]

  def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.create(task_params)

    redirect_to project_path(@project)    
  end

  def destroy
    @project = Project.find(params[:project_id])
    @task = @project.tasks.find(params[:id])
    @task.destroy
    redirect_to project_path(@project)
    
  end



  private

  def task_params
    params.require(:task).permit(:description, :priority, :deadline, :done)
  end

end
