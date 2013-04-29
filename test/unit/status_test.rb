require 'test_helper'

class StatusTest < ActiveSupport::TestCase
    test "that a status requires content" do
        status = Status.new
        status.content = "H"
        assert !status.save #call status.save and flip return value
        # will fail (saves the status with one letter
        # prior to adding the vailidation)
        assert !status.errors[:content].empty?
    end
    
    test "that a status's content is as least 2 letters" do
        status = Status.new
        status.content = "H"
        assert !status.save
        assert !status.errors[:content].empty?
    end
    
    test "that a status has a user id" do
        status = Status.new
        status.content = "Hello"
        assert !status.save
        assert !status.errors[:user_id].empty?
    end
end
