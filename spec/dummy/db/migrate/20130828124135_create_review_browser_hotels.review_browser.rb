# This migration comes from review_browser (originally 20130828124025)
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
