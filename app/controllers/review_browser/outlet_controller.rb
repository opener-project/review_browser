module ReviewBrowser
  class OutletController < ApplicationController
    skip_before_filter :verify_authenticity_token

    def create
      review = Review.find_by_request_id(params[:request_id])
      parsed_review = parser.parse(params[:input])

      review.opinion_expressions.destroy_all

      parsed_review.opinions.each do |opinion|
        domain = Domain.find_or_create_by_name(opinion.domain)
        expression = OpinionExpression.create(:body=>opinion.text,
                                              :sentiment=>opinion.sentiment,
                                             :domain_id=>domain.id)
        review.opinion_expressions << expression
      end
      review.general_comment.update_attribute(:parsed_body, parsed_review.html)

      render :text=>"Created", :status=>201
    end

    def parser
      ReviewBrowser::KafToReviewParser.new
    end

  end
end
