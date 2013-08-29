module ReviewBrowser
  class Rating < ActiveRecord::Base
    attr_accessible :review_id, :topic, :value

    belongs_to :review

    validates_uniqueness_of :topic, :scope => [:review_id]
    validates_presence_of :review_id

    def stars
      value / 20
    end
  end
end
