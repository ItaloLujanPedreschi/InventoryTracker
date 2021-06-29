class DropUnits < ActiveRecord::Migration[6.1]
  def change
    drop_table :units
  end
end
