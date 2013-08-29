module ReviewBrowser
  class Review < ActiveRecord::Base
    #Reviewer Data
    attr_accessible :age_group, :recommend, :trip_type, :visit_date, :visit_reason,
                    :reservation_number, :reviewer_type

    attr_accessible :hotel_id, :review_id, :source_name
    attr_accessible :title, :language, :manager_response :review_date, :review_id

    has_many :ratings
    has_many :comments
    has_one :reviewer
    has_many :notes
    has_many :tasks
    has_one :starred_review
    has_many :mini_sentences
    belongs_to :hotel

    validates_uniqueness_of :review_id

    def starred
      !!self.starred_review || false
    end
  end
end
