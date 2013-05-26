require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save user without an email/password" do
  	user = User.new
  	assert !user.save, "Saved the user without an email/password"
	end  
end
