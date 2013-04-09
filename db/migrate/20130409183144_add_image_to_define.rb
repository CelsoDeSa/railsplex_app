class AddImageToDefine < ActiveRecord::Migration
  def change
    add_column :defines, :image, :string
  end
end
