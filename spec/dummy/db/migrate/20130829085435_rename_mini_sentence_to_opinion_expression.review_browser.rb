# This migration comes from review_browser (originally 20130829085232)
class RenameMiniSentenceToOpinionExpression < ActiveRecord::Migration
  def up
    rename_table(:review_browser_mini_sentences, :review_browser_opinion_expressions)
  end

  def down
    rename_table(:review_browser_opinion_expressions, :review_browser_mini_sentences)
  end
end
