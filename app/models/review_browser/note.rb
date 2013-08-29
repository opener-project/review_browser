module ReviewBrowser
  class Note < ActiveRecord::Base
    attr_accessible :body, :review_id
    
    belongs_to :review
  end
end
