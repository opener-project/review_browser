module ReviewBrowser
  class Review < ActiveRecord::Base
    attr_accessible :age_group, :hotel_id, :language, :manager_response, :recommend
    attr_accessible :reservation_number, :review_date, :review_id, :reviewer_type
    attr_accessible :source_name, :title, :trip_type, :visit_date, :visit_reason
    
    has_many :ratings
    
    validates_uniqueness_of :review_id
  end
end
