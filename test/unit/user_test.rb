require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save user without an email/password" do
  	user = User.new
  	assert !user.save, "Saved the user without an email/password"
	end  

=begin
  test "entries for date should return a valid entry" do
  	entry_set = CalendarEntry.entries_for_date(2013, 2, 28)

  	assert_not_nil entry_set, "CalendarEntry.entries_for_date returned nil"

  	entry_set.each do |entry|
  		assert entry.valid?, "CalendarEntry.entries_for_date returned an invalid record"
  	end
  end   

  test "has entry for date should return an integer" do
    count = CalendarEntry.has_entry_for_date(2013, 2, 28)

    if assert_not_nil count
    	assert count >= 0 
    end
  end	 
=end	
end
