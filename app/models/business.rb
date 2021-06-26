# == Schema Information
#
# Table name: businesses
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_businesses_on_user_id  (user_id)
#
class Business < ApplicationRecord
    validates :user_id, :name, presence: true

    belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

    has_many :items,
    primary_key: :id,
    foreign_key: :business_id,
    class_name: :Item,
    dependent: :destroy
end
