# == Schema Information
#
# Table name: items
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string           not null
#  quantity    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  business_id :integer          not null
#
# Indexes
#
#  index_items_on_business_id  (business_id)
#
class Item < ApplicationRecord
    validates :business_id, :name, :quantity, presence: true

    belongs_to :business,
    primary_key: :id,
    foreign_key: :business_id,
    class_name: :Business
end
