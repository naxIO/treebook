require 'test_helper'

class UserFriendshipTest < ActiveSupport::TestCase
	should belong_to(:user)
	should belong_to(:friend)

	test "that creating a friendship works without raising an exception" do
		assert_nothing_raised do
			UserFriendship.create user: users(:jack), friend: users(:chloe)
		end
	end

	test "that creating a friendship based on a user id and a friend id works" do
		UserFriendship.create user_id: users(:jack).id, friend_id: users(:chloe).id
		assert users(:jack).friends.include?(users(:chloe))
    end
end
