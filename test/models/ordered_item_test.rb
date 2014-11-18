require 'test_helper'

class OrderedItemTest < ActiveSupport::TestCase
  should belong_to(:menu_item)
  should belong_to(:account)

  should validate_presence_of(:submitted)
  should validate_presence_of(:paid)
  should validate_presence_of(:menu_item_id)
  should validate_presence_of(:account_id)
  should validate_presence_of(:delivery_date)
end