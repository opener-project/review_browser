require 'simplecov'

SimpleCov.start do
  root         File.expand_path('../../../', __FILE__)
  command_name 'rspec'
  project_name 'review_browser'

  add_group 'Models', 'app/models'
  add_group 'Helpers', 'app/helpers'
  add_group 'Libraries', 'lib/review_browser'

  add_filter 'config/routes'
  add_filter 'config/initializers'
  add_filter 'spec'
  add_filter 'lib/review_browser/version'
  add_filter 'app/controllers'
end
