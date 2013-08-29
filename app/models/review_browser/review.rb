module ReviewBrowser
  class Review < ActiveRecord::Base
    #Reviewer Data
    attr_accessible :age_group, :recommend, :trip_type, :visit_date, :visit_reason,
                    :reservation_number, :reviewer_type

    attr_accessible :company_id, :review_id, :source_name, :sentiment
    attr_accessible :title, :language, :manager_response, :review_date, :review_id

    has_many :ratings
    has_many :comments
    has_one :reviewer
    has_many :notes
    has_many :tasks
    has_one :starred_review
    has_many :opinion_expressions
    belongs_to :company
    

    validates_uniqueness_of :review_id
    validates_presence_of :hotel_id

    def starred
      !!self.starred_review || false
    end
    
    def find(*args)
      find_by_review_id(*args)
    end
  end
end
