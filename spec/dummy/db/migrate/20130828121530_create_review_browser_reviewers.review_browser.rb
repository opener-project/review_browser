# This migration comes from review_browser (originally 20130828121125)
class CreateReviewBrowserReviewers < ActiveRecord::Migration
  def change
    create_table :review_browser_reviewers do |t|
      t.integer :review_id
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
