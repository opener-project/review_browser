# If you want to use the ActiveModel serializers Gem, uncomment the following
# line:
#require 'active_model_serializers'

require 'haml-rails'
require 'jquery-rails'
require 'kaminari'

# If your engine needs the Olery models Gem (it probably will), uncomment the
# following lines and add any extra ones where needed:
#
#require 'olery/models'
#require 'olery/models/active_record/following'
#require 'olery/models/mongoid/review'

require_relative 'review_browser/engine'
require_relative 'review_browser/version'
