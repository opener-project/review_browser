# This migration comes from review_browser (originally 20130828125700)
class CreateReviewBrowserStarredReviews < ActiveRecord::Migration
  def change
    create_table :review_browser_starred_reviews do |t|
      t.string :review_id

      t.timestamps
    end
  end
end
