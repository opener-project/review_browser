# This migration comes from review_browser (originally 20130829093712)
class RenameHotelIdToCompanyIdInReviews < ActiveRecord::Migration
  def change
    rename_column :review_browser_reviews, :hotel_id, :company_id
  end
end
