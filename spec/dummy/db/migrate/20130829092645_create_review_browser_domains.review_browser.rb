# This migration comes from review_browser (originally 20130829092638)
class CreateReviewBrowserDomains < ActiveRecord::Migration
  def change
    create_table :review_browser_domains do |t|
      t.string :name

      t.timestamps
    end
  end
end
