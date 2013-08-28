module ReviewBrowser
  class Task < ActiveRecord::Base
    attr_accessible :body, :email, :review_id
    
    belongs_to :review
  end
end
