class CreateItems < ActiveRecord::Migration[6.1]
    def change
        create_table :items do |t|
            t.integer :business_id, null: false
            t.string :name, null: false
            t.text :description
            t.integer :quantity, null: false

            t.timestamps
        end
        add_index :items, :business_id
    end
end
