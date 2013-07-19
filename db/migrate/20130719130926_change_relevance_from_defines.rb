class ChangeRelevanceFromDefines < ActiveRecord::Migration
  def up
  	change_column :defines, :relevance, :string
  end

  def down
  	change_column :defines, :relevance, :integer
  end
end
