module ReviewBrowser
  class Comment < ActiveRecord::Base
    attr_accessible :body, :review_id, :type
  
    belongs_to :review
    
    validates_uniqueness_of :type, :scope => [:review_id]
  end
end
