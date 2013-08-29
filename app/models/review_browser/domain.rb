module ReviewBrowser
  class Domain < ActiveRecord::Base
    attr_accessible :name
    
    has_many :opinion_expressions
  end
end
