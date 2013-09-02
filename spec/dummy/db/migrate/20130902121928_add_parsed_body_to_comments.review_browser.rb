# This migration comes from review_browser (originally 20130902121727)
class AddParsedBodyToComments < ActiveRecord::Migration
  def change
    add_column :review_browser_comments, :parsed_body, :text
  end
end
