class AddSentimentInReviews < ActiveRecord::Migration
  def up
    add_column :review_browser_reviews, :sentiment, :integer
  end

  def down
    remove_column :review_browser_reviews, :sentiment
  end
end
