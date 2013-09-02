require 'opener/kaf_parser'

module ReviewBrowser
  class KafToReviewParser
    Review = Struct.new(:opinions, :html)
    Opinion = Struct.new(:text, :sentiment, :domain)

    attr_reader :parser

    def initialize
      @parser  = Opener::KafParser::Parser.new
    end

    def parse(kaf)
      ast = parser.parse(kaf)
      opinions = extract_opinions(ast)
      html = construct_html(ast)
      return Review.new(opinions, html)
    end

    def extract_opinions(ast)
      opinions = ast.children.select{|n| n.type == :opinion}
      presenter = Opener::KafParser::Presenter::Text.new
      opinions.map do |opinion|
        sentiment = opinion.polarity
        text = presenter.present(opinion)
        domain = opinion.children.map{|c| c.property if c.respond_to?(:property)}.uniq.compact.first
        Opinion.new(text, sentiment, domain)
      end
    end

    def construct_html(ast)
      presenter = Opener::KafParser::Presenter::HTML.new
      presenter.present(ast)
    end

  end
end
