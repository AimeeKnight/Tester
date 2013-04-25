require 'test_helper'

class StatusTest < ActiveSupport::TestCase
    test "A status should not be blank" do
        status = Status.new
        #status.content = "H"
        assert !status.save #call status.save and flip return value
        #will fail (saves the status with one letter
        #prior to adding the vailidation)
        #assert !status.errors[:content].empty?
    end
end
