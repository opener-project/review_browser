class ChangeTypeForSentimentInReviews < ActiveRecord::Migration
  def up
    change_column :review_browser_reviews, :sentiment, :string
  end

  def down
    change_column :review_browser_reviews, :sentiment, :integer
  end
end
