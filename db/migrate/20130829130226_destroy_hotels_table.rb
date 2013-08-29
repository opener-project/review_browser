class DestroyHotelsTable < ActiveRecord::Migration
  def change
    drop_table :review_browser_hotels
  end
end
