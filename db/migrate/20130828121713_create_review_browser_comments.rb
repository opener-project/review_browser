class CreateReviewBrowserComments < ActiveRecord::Migration
  def change
    create_table :review_browser_comments do |t|
      t.integer :review_id
      t.string :type
      t.text :body

      t.timestamps
    end
  end
end
