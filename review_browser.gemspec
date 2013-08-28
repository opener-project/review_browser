require File.expand_path('../lib/review_browser/version', __FILE__)

Gem::Specification.new do |s|
  s.name                  = 'review_browser'
  s.version               = ReviewBrowser::VERSION
  s.authors               = ['Olery <development@olery.com>']
  s.summary               = 'FIXME: Write this you lazy git.'
  s.description           = s.summary
  s.has_rdoc              = 'yard'
  s.required_ruby_version = '>= 1.9.3'

  s.files = `git ls-files`.split("\n").sort

  s.add_dependency 'rails', '~> 3.2'
  s.add_dependency 'sass-rails', '~> 3.2'
  s.add_dependency 'coffee-rails', '~> 3.2'
  s.add_dependency 'haml-rails', '~> 0.4'
  s.add_dependency 'mysql2'
  s.add_dependency 'mongoid', '~> 3.0'

  # Uncomment the following lines if you'd like to use these Gems, otherwise
  # just remove them:
  #s.add_dependency 'jquery-rails'
  #s.add_dependency 'kaminari'
  #s.add_dependency 'active_model_serializers'
end
