require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save task without description, under 50 characters" do
  	task = Task.new
  	assert !task.save, "Saved the entry without date, slot, content"

  	task.description = "Do laundry"
  	assert task.save, "Should now save with description"
	end
end
