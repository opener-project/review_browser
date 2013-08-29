class RenameHotelIdToCompanyIdInReviews < ActiveRecord::Migration
  def change
    rename_column :review_browser_reviews, :hotel_id, :company_id
  end
end
