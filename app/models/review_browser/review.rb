module ReviewBrowser
  class Review < ActiveRecord::Base
    attr_accessible :age_group, :hotel_id, :language, :manager_response, :recommend
    attr_accessible :reservation_number, :review_date, :review_id, :reviewer_type
    attr_accessible :source_name, :title, :trip_type, :visit_date, :visit_reason
    
    has_many :ratings
    has_many :comments
    has_one :reviewer
    has_one :note
    has_one :starred_review
    has_many :mini_sentences
    belongs_to :hotel
    
    validates_uniqueness_of :review_id
    
    
    def starred
      !!self.starred_review || false
    end
  end
end
