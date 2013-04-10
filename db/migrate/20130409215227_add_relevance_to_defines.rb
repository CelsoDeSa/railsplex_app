class AddRelevanceToDefines < ActiveRecord::Migration
  def change
    add_column :defines, :relevance, :integer
  end
end
