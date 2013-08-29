module ReviewBrowser
  class Reviewer < ActiveRecord::Base
    attr_accessible :location, :name, :review_id
    
    belongs_to :review
    
    validates_presence_of :review_id
  end
end
