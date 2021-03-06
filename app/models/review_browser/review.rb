module ReviewBrowser
  class Review < ActiveRecord::Base
    #Reviewer Data
    attr_accessible :age_group, :recommend, :trip_type, :visit_date, :visit_reason,
                    :reservation_number, :reviewer_type

    attr_accessible :company_id, :review_id, :source_name, :sentiment
    attr_accessible :title, :language, :manager_response, :review_date, :review_id

    has_many :ratings
    has_many :comments

    has_one :general_comment, :class_name => Comments::General
    has_one :manager_comment, :class_name => Comments::Manager

    has_one :reviewer
    has_many :notes
    has_many :tasks
    has_one :starred_review
    has_many :opinion_expressions
    belongs_to :company

    validates_uniqueness_of :review_id
    validates_presence_of :company_id

    def starred
      !!self.starred_review || false
    end

    def find(*args)
      find_by_review_id(*args)
    end

    def related_reviews(*domains)
      domains = domains.flatten
      company = Company.find(self.company_id)
      company.
      reviews.
      joins(:opinion_expressions).
      group("review_browser_reviews.review_id").
      order("review_date DESC").
      where("review_browser_opinion_expressions.domain_id IN (?)", domains.map(&:id))
    end

    def related_opinion_expressions(*domains)
      domains = domains.flatten
      self.opinion_expressions.where(:domain_id => domains.map(&:id))
    end

    def self.exclude(review)
      where("review_browser_reviews.id != ?", review.id)
    end

    def analyze
      response = Analyzer.analyze(general_comment.body)
      puts response
      update_attribute(:request_id, response["request_id"])
    end
  end
end
