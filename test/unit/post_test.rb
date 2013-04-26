require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save post without title" do
  	post = Post.new
  	assert !post.save, "Saved the post without a title"
	end

	#test "should report error" do
	  # some_undefined_variable is not defined elsewhere in the test case
	  #some_undefined_variable
	  #assert true
	#end	
end
