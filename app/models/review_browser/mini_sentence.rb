module ReviewBrowser
  class MiniSentence < ActiveRecord::Base
    attr_accessible :body, :review_id, :sentiment, :topic

    belongs_to :review

    def self.same_topic
      where(:topic => topic)
    end

    def self.related
      same_topic.where(create_query(body))
    end

    def create_query(body)
      body.split(" ").map do |word|
        "(body LIKE '%#{word}%')"
      end.uniq.join(" OR ")
    end
  end
end
