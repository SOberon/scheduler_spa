require 'test_helper'

class SectionTest < ActiveSupport::TestCase
    test "empty section number" do
      s = Section.create({:number => "", :room_number => 42})
      refute s.valid?
      refute s.save
      assert_equal({:course=>["must exist"],:number => ["can't be blank", "is not a number"]}, s.errors.messages)
    end

    test "section number not a number" do
      s = Section.create({:number => "abc", :room_number => 42})
      refute s.valid?
      refute s.save
      assert_equal({:course=>["must exist"],:number => ["is not a number"]}, s.errors.messages)
    end

    test "empty room number" do
      s = Section.create({:number => 42, :room_number => ""})
      refute s.valid?
      refute s.save
      assert_equal({:course=>["must exist"],:room_number => ["can't be blank", "is not a number"]}, s.errors.messages)
    end

    test "room number not a number" do
      s = Section.create({:number => 42, :room_number => "abc"})
      refute s.valid?
      refute s.save
      assert_equal({:course=>["must exist"], :room_number => ["is not a number"]}, s.errors.messages)
    end

end
