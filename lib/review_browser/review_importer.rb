# encoding: UTF-8
require 'csv'
require 'pry'

module ReviewBrowser
  class ReviewImporter
    attr_reader :filename

    def initialize(filename)
      @filename = filename
    end
    
    def parse
      CSV.foreach(filename) do |row|
        parse_review(row)
      end
    end

    def parse_review(row)
      binding.pry
      review = create_review(row[0], row[1], row[11], row[10])
      create_reviewer(review, row[8], row[9])
      create_ratings(review, row[2], row[3], row[4], row[5], row[6], row[7])
      create_general_comment(review, row[1])
      review.save
    end    
    
    def create_review(title, body, review_date, source_name)
      ReviewBrowser::Review.create( 
                                             :review_id => Time.now.to_i,
                                             :visit_date=>review_date,
                                             :company_id=> 1,
                                             :source_name=>source_name,
                                             :title=> title,
                                             :language=>"English",
                                             :review_date=>review_date,
                                              )
    end
    
    def create_reviewer(review, name, location)
      review.reviewer = ReviewBrowser::Reviewer.create(:name => name, :location => location)
    end
    
    def create_ratings(review, cleanliness, overall, value, rooms, location, service)
      ratings = []
      ratings << ["overall",(overall*10).to_i] if overall
      ratings << ["value",(value*10).to_i] if value
      ratings << ["rooms",(rooms*10).to_i] if rooms
      ratings << ["location",(location*10).to_i] if location
      ratings << ["cleanliness",(cleanliness*10).to_i] if location

      ratings.each do |topic, value|
        review.ratings << ReviewBrowser::Rating.create(:topic=>topic, :value=>value)
      end
    end
    
    def create_general_comment(review, comment_text)
      review.comments << ReviewBrowser::Comments::General.create(:body=>comment_text)
    end
      
  end
end