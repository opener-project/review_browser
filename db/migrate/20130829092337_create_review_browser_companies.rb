class CreateReviewBrowserCompanies < ActiveRecord::Migration
  def change
    create_table :review_browser_companies do |t|
      t.string :name
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
