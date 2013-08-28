class CreateReviewBrowserReviews < ActiveRecord::Migration
  def change
    create_table :review_browser_reviews do |t|
      t.string :review_id
      t.integer :hotel_id
      t.string :reservation_number
      t.string :age_group
      t.boolean :recommend
      t.text :manager_response
      t.string :visit_reason
      t.string :language
      t.string :reviewer_type
      t.string :source_name
      t.date :review_date
      t.date :visit_date
      t.text :title
      t.string :trip_type

      t.timestamps
    end
  end
end
