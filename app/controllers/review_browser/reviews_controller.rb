module ReviewBrowser
  class ReviewsController < ApplicationController
    def show
      if params[:domains]
        domains = params[:domains].split(",") || []
        @domains = Domain.find_all_by_name(domains)
      else
        @domains = Domain.all
      end

      @other_domains = Domain.all - @domains

      @review = Review.find(params[:id])
      @related_reviews = @review.related_reviews(@domains).exclude(@review).first(4)
    end
  end
end


