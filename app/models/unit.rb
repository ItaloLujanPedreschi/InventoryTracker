# == Schema Information
#
# Table name: units
#
#  id            :bigint           not null, primary key
#  notes         :text
#  serial_number :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  item_id       :integer          not null
#
# Indexes
#
#  index_units_on_item_id  (item_id)
#
class Unit < ApplicationRecord
    validates :item_id, presence: true

    belongs_to :item,
    primary_key: :id,
    foreign_key: :item_id,
    class_name: :Item
end
