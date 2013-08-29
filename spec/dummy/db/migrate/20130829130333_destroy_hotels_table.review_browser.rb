# This migration comes from review_browser (originally 20130829130226)
class DestroyHotelsTable < ActiveRecord::Migration
  def change
    drop_table :review_browser_hotels
  end
end
