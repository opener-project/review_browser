module ReviewBrowser
  class Company < ActiveRecord::Base
    attr_accessible :city, :country, :name
    
    has_many :reviews
    validates_presence_of :name
  end
end
