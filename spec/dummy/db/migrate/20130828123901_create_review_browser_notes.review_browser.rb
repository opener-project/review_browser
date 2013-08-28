# This migration comes from review_browser (originally 20130828123845)
class CreateReviewBrowserNotes < ActiveRecord::Migration
  def change
    create_table :review_browser_notes do |t|
      t.integer :review_id
      t.text :body

      t.timestamps
    end
  end
end
