class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.float :price
      t.float :weight
      t.string :name
      t.string :description
      t.boolean :real
      t.timestamps
    end
    add_index :items, :price
    add_index :items, :name
  end
end
