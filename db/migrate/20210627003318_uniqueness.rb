class Uniqueness < ActiveRecord::Migration[6.1]
    def change
        add_index :businesses, [:user_id, :name], unique: true
    end
end
