class Item < ApplicationRecord
    validates :business_id, :name, :quantity, presence: true
end
