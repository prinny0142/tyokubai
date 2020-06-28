class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :user_id
      t.string :name
      t.integer :price
      t.string :image_id
      t.text :explain
      t.integer :status
      t.timestamps
    end
  end
end
