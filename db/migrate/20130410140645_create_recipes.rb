class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :recipe
      t.belongs_to :user

      t.timestamps
    end
    add_index :recipes, :user_id
  end
end
