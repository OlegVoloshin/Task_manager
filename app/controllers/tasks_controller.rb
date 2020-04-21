class TasksController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @project.tasks.new(task_params)

    redirect_to project_path(@project)    
  end



  private

  def task_params
    params.require(:task).permit(:description, :priority, :deadline, :done)
  end

end
