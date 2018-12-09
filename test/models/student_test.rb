require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  test "empty name" do
    s = Student.create({:name => ""})
    refute s.valid?
    refute s.save
    assert_equal({:name => ["can't be blank"]}, s.errors.messages)
  end

end
