module ReviewBrowser
  class RelatedOpinionsFinder
    def self.for(opinion_expression)
      OpinionExpression.where(:domain_id => opinion_expression.domain_id)
    end
  end
end