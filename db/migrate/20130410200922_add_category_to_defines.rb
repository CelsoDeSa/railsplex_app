class AddCategoryToDefines < ActiveRecord::Migration
  def change
    add_column :defines, :category, :string
  end
end
