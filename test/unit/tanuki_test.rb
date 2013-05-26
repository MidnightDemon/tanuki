require 'test_helper'

class TanukiTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save tanuki without name, male, nature" do
  	tanuki = Tanuki.new
  	assert !tanuki.save, "Saved the entry without name, male, nature"

  	tanuki.name = 0
  	tanuki.male = true
  	tanuki.nature = 0
    tanuki.user_id = 1
    tanuki.hue = 0
    tanuki.sepia = 0
    tanuki.brightness = 0

  	assert tanuki.save, "Should now save with name, male, nature"
	end  
end
