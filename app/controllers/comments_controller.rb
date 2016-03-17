class CommentsController < ApplicationController
  def create
    task = Task.find(params[:task_id])
    task.comments.create(params.require(:comment).permit(:content))
    
    redirect_to task
  end
end
