module ReviewBrowser
  class Hotel < ActiveRecord::Base
    attr_accessible :city, :country, :name
  end
end
