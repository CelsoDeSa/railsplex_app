class CreateDefines < ActiveRecord::Migration
  def change
    create_table :defines do |t|
      t.string :term
      t.text :definition

      t.timestamps
    end
  end
end
