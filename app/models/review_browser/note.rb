module ReviewBrowser
  class Note < ActiveRecord::Base
    attr_accessible :body, :review_id
    
    belongs_to :review
    validates_presence_of :review_id
  end
end
