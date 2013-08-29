module ReviewBrowser
  class Company < ActiveRecord::Base
    attr_accessible :city, :country, :name
    
    has_many :reviews
  end
end
