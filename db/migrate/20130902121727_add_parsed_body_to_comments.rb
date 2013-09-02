class AddParsedBodyToComments < ActiveRecord::Migration
  def change
    add_column :review_browser_comments, :parsed_body, :text
  end
end
