module ReviewBrowser
  class ReviewsController < ApplicationController
    def show
      @domain = Domain.find_by_name("cleanliness")
      @review = Review.last
      @related_reviews = @review.related_reviews(@domain).first(4)
    end
  end
end


