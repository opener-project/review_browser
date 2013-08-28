# Automatically load all the extensions from app/models/review_browser/extensions.
root    = ReviewBrowser::Engine.root
pattern = File.join(root, 'app/models/review_browser/extensions/*.rb')

Dir.glob(pattern) do |file|
  require_dependency(file)

  model     = File.basename(file, '.rb').camelize
  extension = ReviewBrowser::Extensions.const_get(model, false)

  model.constantize.send(:include, extension)
end
