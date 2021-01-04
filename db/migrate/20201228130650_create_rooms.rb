class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.text :explanation
      t.string :name
      t.integer :category_id
      t.timestamps
    end
  end
end
