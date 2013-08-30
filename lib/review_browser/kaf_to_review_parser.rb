require 'opener/kaf_parser'

module ReviewBrowser
  class KafToReviewParser
    Review = Struct.new(:text, :opinions)
    Opinion = Struct.new(:text, :sentiment)

    attr_reader :parser

    def initialize
      @parser  = Opener::KafParser::Parser.new
    end

    def parse(kaf)
      document = parser.parse(kaf)
      opinions = extract_opinions(document)
      text = extract_text(kaf)
      return Review.new(text, opinions)
    end

    def extract_opinions(document)
      constructor = Opener::KafParser::OpinionList.new(document)
      opinions = constructor.construct

      opinions.map do |opinion|
        sentiment = opinion.polarity
        text = opinion.expression.map(&:value).join(" ")

        Opinion.new(text, sentiment)
      end
    end

    def extract_text(document)
      "This is the text, don't know how to get the raw text out"
    end

  end
end
