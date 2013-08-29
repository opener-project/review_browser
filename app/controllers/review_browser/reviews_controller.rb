module ReviewBrowser
  class ReviewsController < ApplicationController
    def show
      @review = Review.last
    end
  end
end


