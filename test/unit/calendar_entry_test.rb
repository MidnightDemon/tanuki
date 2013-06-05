require 'test_helper'

class CalendarEntryTest < ActiveSupport::TestCase

  def setup
    # Code in here is executed before each test
    
    # Instance variables set here are available
    # in all tests
    @entry = CalendarEntry.new
  end

  test "should not save calendar entry without date, slot, content" do
  	assert !@entry.save, "Saved the entry without date, slot, content"
	end

  test "get slot names should return not nil" do
  	@entry.slot = 0 # Pre-breakfast snack
		
		assert_not_nil @entry, "Entry creation failed"
		assert @entry.get_slot_name == "Pre-breakfast snack", "Slot name not as expected"
	end
end
