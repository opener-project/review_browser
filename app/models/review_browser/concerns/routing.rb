module ReviewBrowser
  module Concerns
    ##
    # The Routing concern makes it easier to write more DRY routes.rb files.
    #
    module Routing
      extend ActiveSupport::Concern

      ##
      # Creates a readable route for Kaminari's pagination system.
      #
      # @param [Symbol] action
      #
      def route_pagination(action = :index)
        get('page/:page', :action => action, :on => :collection)
      end
    end # Routing
  end # Concerns
end # ReviewBrowser
