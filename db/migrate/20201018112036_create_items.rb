class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.text :text, null: false
      t.integer :category_id, null: false
      t.timestamps
    end
  end
end
