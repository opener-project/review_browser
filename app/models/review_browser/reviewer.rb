module ReviewBrowser
  class Reviewer < ActiveRecord::Base
    attr_accessible :location, :name, :review_id
    
    belongs_to :review
  end
end
