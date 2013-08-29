# This migration comes from review_browser (originally 20130829090958)
class RenameTopicToDomainInOpinionExpressions < ActiveRecord::Migration
  def up
    rename_column :review_browser_opinion_expressions, :topic, :domain_id
    change_column :review_browser_opinion_expressions, :domain_id, :integer
  end

  def down
    change_column :review_browser_opinion_expressions, :domain_id, :string
    rename_column :review_browser_opinion_expressions, :domain_id, :topic
    
  end
end
