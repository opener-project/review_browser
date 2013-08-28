ENV['RAILS_ENV'] = 'test'

require_relative 'support/simplecov' if ENV['COVERAGE']
require_relative 'dummy/config/environment'

require 'rspec/rails'
require 'rspec/autorun'

# Uncomment these if you want to use Capybara/Turnip in combination with
# Poltergeist.
#require 'capybara/rspec'
#require 'capybara/rails'
#require 'capybara/poltergeist'
#require 'turnip/capybara'

require 'factory_girl_rails'

# When using Poltergeist you'll want to uncomment the following line.
#Capybara.javascript_driver = :poltergeist

Warden.test_mode!

# Automatically load all the step definitions.
Dir.glob(File.expand_path('../support/feature_steps/**/*.rb', __FILE__)) do |step|
  require(step)
end

Rails.backtrace_cleaner.remove_silencers!

RSpec.configure do |config|
  config.color = true

  config.mock_with :rspec

  config.include FactoryGirl::Syntax::Methods
  config.include ReviewBrowser::Engine.routes.url_helpers
  config.include Warden::Test::Helpers

  config.before :each do
    @routes = ReviewBrowser::Engine.routes
  end

  # This is a million times faster than using database cleaner, so don't use
  # database cleaner.
  config.before :suite do
    ActiveRecord::Base.subclasses.map(&:delete_all)
    Mongoid.models.map(&:delete_all)
  end

  config.after :each do
    Warden.test_reset!
  end

  # Uncomment this if you're using Capybara with Turnip.
  #config.include Capybara, :example_group => {
  #  :file_path => File.expand_path('../features', __FILE__)
  #}
end
