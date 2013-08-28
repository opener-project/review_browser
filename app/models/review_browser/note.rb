module ReviewBrowser
  class Note < ActiveRecord::Base
    attr_accessible :body, :review_id
  end
end
