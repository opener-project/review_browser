# This migration comes from review_browser (originally 20130828125923)
class AddSentimentInReviews < ActiveRecord::Migration
  def up
    add_column :review_browser_reviews, :sentiment, :integer
  end

  def down
    remove_column :review_browser_reviews, :sentiment
  end
end
