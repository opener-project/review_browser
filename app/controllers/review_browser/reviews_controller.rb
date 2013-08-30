module ReviewBrowser
  class ReviewsController < ApplicationController
    def show
      @domain = Domain.find_by_name("cleanliness")
      @review = Review.find(params[:id])
      @related_reviews = @review.related_reviews(@domain).exclude(@review).first(4)
    end
  end
end


