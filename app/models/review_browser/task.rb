module ReviewBrowser
  class Task < ActiveRecord::Base
    attr_accessible :body, :email, :review_id
    
    belongs_to :review
    
    validates_presence_of :review_id
  end
end
