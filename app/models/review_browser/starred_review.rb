module ReviewBrowser
  class StarredReview < ActiveRecord::Base
    attr_accessible :review_id
    
    belongs_to :review
  end
end
