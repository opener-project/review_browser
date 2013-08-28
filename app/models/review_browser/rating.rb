module ReviewBrowser
  class Rating < ActiveRecord::Base
    attr_accessible :review_id, :topic, :value
    
    belongs_to :review
    
    validates_uniqueness_of :topic, :scope => [:review_id]
  end
end
