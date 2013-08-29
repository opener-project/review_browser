# This migration comes from review_browser (originally 20130828125640)
class CreateReviewBrowserMiniSentences < ActiveRecord::Migration
  def change
    create_table :review_browser_mini_sentences do |t|
      t.integer :review_id
      t.string :topic
      t.text :body
      t.string :sentiment

      t.timestamps
    end
  end
end
