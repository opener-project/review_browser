module ReviewBrowser
  class OpinionExpression < ActiveRecord::Base
    attr_accessible :body, :review_id, :sentiment, :domain_id

    belongs_to :review
    belongs_to :domain

    def self.same_domain
      where(:domain_id => domain_id)
    end

    def self.related
      same_domain
    end

  end
end
