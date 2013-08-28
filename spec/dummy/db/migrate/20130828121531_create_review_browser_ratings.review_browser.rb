# This migration comes from review_browser (originally 20130828121200)
class CreateReviewBrowserRatings < ActiveRecord::Migration
  def change
    create_table :review_browser_ratings do |t|
      t.integer :review_id
      t.string :topic
      t.integer :value

      t.timestamps
    end
  end
end
