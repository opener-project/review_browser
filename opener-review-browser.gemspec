require File.expand_path('../lib/review_browser/version', __FILE__)

Gem::Specification.new do |s|
  s.name                  = 'opener-review-browser'
  s.version               = ReviewBrowser::VERSION
  s.authors               = ['Olery <development@olery.com>']
  s.summary               = 'Rails engine application for Review Browser'
  s.description           = s.summary
  s.has_rdoc              = 'yard'
  s.required_ruby_version = '>= 1.9.3'
  s.license               = 'Apache 2.0'

  s.files = `git ls-files`.split("\n").sort

  s.add_dependency 'rails', '~> 3.2'
  s.add_dependency 'sass-rails', '~> 3.2'
  s.add_dependency 'coffee-rails', '~> 3.2'
  s.add_dependency 'haml-rails', '~> 0.4'
  s.add_dependency 'mysql2'
  s.add_dependency 'simple_form'
  s.add_dependency 'opener-kaf-parser'
  s.add_dependency 'opener-client'

  s.add_dependency 'jquery-rails'
  s.add_dependency 'kaminari'
  s.add_dependency 'active_model_serializers'
end
