module ReviewBrowser
  class StarredReview < ActiveRecord::Base
    attr_accessible :review_id
    
    belongs_to :review
    
    validates_presence_of :review_id
  end
end
