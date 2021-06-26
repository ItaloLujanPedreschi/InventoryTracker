class CreateUnits < ActiveRecord::Migration[6.1]
  def change
    create_table :units do |t|
      t.integer :item_id, null: false
      t.string :serial_number
      t.text :notes

      t.timestamps
    end
    add_index :units, :item_id
  end
end
