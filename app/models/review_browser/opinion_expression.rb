module ReviewBrowser
  class OpinionExpression < ActiveRecord::Base
    attr_accessible :body, :review_id, :sentiment, :domain_id

    belongs_to :review
    belongs_to :domain
    
    validates_presence_of :review_id

    def same_domain
      RelatedOpinionsFinder.for(self)
    end
    alias :related :same_domain
        
    def self.positive
      where(:sentiment => "positive")
    end
    
    def self.negative
      where(:sentiment => "negative")
    end
  end
end
