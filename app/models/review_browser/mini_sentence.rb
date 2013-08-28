module ReviewBrowser
  class MiniSentence < ActiveRecord::Base
    attr_accessible :body, :review_id, :sentiment, :topic
    
    belongs_to :review
  end
end
