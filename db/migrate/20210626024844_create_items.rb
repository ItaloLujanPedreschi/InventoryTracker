class CreateItems < ActiveRecord::Migration[6.1]
    def change
        create_table :items do |t|
            t.integer :item_id, null: false
            t.string :name, null: false
            t.i :serial_number

            t.text :notes

            t.timestamps
        end
    end
end
