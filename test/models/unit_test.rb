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
require "test_helper"

class UnitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
