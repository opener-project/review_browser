module ReviewBrowser
  class Engine < ::Rails::Engine
    isolate_namespace ReviewBrowser

    config.generators do |g|
      g.test_framework :rspec, :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'

      g.assets false
      g.helper false

      g.template_engine :haml
    end

    # If you need extra initializers for for example the assets, here's the way
    # to do it. If you don't need this, remove these lines:
    #
    #initializer 'review_browser.assets.precompile' do |app|
    #  app.config.assets.precompile += ['admin_tool/example.css']
    #end
  end # Engine
end # ReviewBrowser
