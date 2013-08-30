# This migration comes from review_browser (originally 20130830074433)
class AddRequestIdToReviews < ActiveRecord::Migration
  def change
    add_column :review_browser_reviews, :request_id, :string
  end
end
