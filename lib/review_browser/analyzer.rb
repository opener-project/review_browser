module ReviewBrowser
  class Analyzer < Opener::Client::Pipeline
    # Define your processors. The order matters.
    define_processors "language-identifier",
      "tokenizer",
      "pos-tagger",
      "polarity-tagger",
      "ner",
      "opinion-detector"

    # Defaults to :async, other option is :sync
    processor_style :async

    webservice_host "http://localhost:9292"

    outlet "http://localhost:3000/review_browser/outlet"

    def self.analyze(text)
      response = self.new.process(text)
    end
  end
end
