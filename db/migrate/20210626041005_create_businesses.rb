class CreateBusinesses < ActiveRecord::Migration[6.1]
    def change
        create_table :businesses do |t|
            t.integer :user_id,  null: false
            t.string :name, null: false
            t.text :description

            t.timestamps
        end
        add_index :businesses, :user_id
    end
end
