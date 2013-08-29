module ReviewBrowser
  class NotesController < ApplicationController
    before_filter :get_review

    def new
      @note = @review.notes.new
    end

    def create
      @note = @review.notes.new(params[:note])
      if @note.save
        flash[:succes] = "Note saved"
        respond_to do |format|
          format.html { redirect_to review_path(@review) }
          format.js {render :partial=>"notes"}
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
