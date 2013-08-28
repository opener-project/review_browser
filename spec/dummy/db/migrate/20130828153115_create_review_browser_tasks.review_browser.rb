# This migration comes from review_browser (originally 20130828153037)
class CreateReviewBrowserTasks < ActiveRecord::Migration
  def change
    create_table :review_browser_tasks do |t|
      t.integer :review_id
      t.string :email
      t.text :body

      t.timestamps
    end
  end
end
