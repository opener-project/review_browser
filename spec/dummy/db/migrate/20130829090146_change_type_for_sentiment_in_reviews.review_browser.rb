# This migration comes from review_browser (originally 20130829090051)
class ChangeTypeForSentimentInReviews < ActiveRecord::Migration
  def up
    change_column :review_browser_reviews, :sentiment, :string
  end

  def down
    change_column :review_browser_reviews, :sentiment, :integer
  end
end
