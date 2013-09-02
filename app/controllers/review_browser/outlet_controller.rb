module ReviewBrowser
  class OutletController < ApplicationController
    skip_before_filter :verify_authenticity_token

    def create
      review = Review.find_by_request_id(params[:request_id])
      parsed_review = parser.parse(params[:input])

      review.opinion_expressions.destroy_all
      parsed_review.opinions.each do |opinion|
        expression = OpinionExpression.create(:body=>opinion.text,
                                              :sentiment=>opinion.sentiment)
        review.opinion_expressions << expression
      end
      render :text=>"Created", :status=>201
    end

    def parser
      ReviewBrowser::KafToReviewParser.new
    end

  end
end
