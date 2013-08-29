module ReviewBrowser
  class Domain < ActiveRecord::Base
    attr_accessible :name
    
    has_many :opinion_expressions
    validates_presence_of :name
  end
end
