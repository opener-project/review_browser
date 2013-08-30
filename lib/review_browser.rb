# If you want to use the ActiveModel serializers Gem, uncomment the following
# line:
#require 'active_model_serializers'

require 'haml-rails'
require 'jquery-rails'
require 'kaminari'
require 'opener/client'

# If your engine needs the Olery models Gem (it probably will), uncomment the
# following lines and add any extra ones where needed:
#
#require 'olery/models'
#require 'olery/models/active_record/following'
#require 'olery/models/mongoid/review'

require_relative 'review_browser/engine'
require_relative 'review_browser/related_opinions_finder'
require_relative 'review_browser/analyzer'
require_relative 'review_browser/kaf_to_review_parser'
require_relative 'review_browser/version'
