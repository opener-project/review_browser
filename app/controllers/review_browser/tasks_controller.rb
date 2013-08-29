module ReviewBrowser
  class TasksController < ApplicationController
    before_filter :get_review

    def new
      @task = @review.tasks.new
    end

    def create
      @task = @review.tasks.new(params[:task])
      if @task.save
        flash[:succes] = "Task saved"
        respond_to do |format|
          format.html { redirect_to review_path(@review) }
          format.js {render :partial=>"tasks"}
        end
      else
        render :action=>:new
      end
    end

    private

    def get_review
      @review = Review.find(params[:review_id])
    end
  end
end

