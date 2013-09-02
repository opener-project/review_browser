require 'opener/kaf_parser'

module ReviewBrowser
  class KafToReviewParser
    Review = Struct.new(:opinions)
    Opinion = Struct.new(:text, :sentiment)

    attr_reader :parser

    def initialize
      @parser  = Opener::KafParser::Parser.new
    end

    def parse(kaf)
      document = parser.parse(kaf)
      opinions = extract_opinions(document)
      return Review.new(opinions)
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

  end
end
