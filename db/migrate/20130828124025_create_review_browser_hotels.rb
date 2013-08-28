class CreateReviewBrowserHotels < ActiveRecord::Migration
  def change
    create_table :review_browser_hotels do |t|
      t.string :name
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
