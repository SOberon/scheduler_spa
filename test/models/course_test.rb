require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "empty name" do
    c = Course.create({:name => "", :number => 42, :credit_hours => 3})
    refute c.valid?
    refute c.save
    assert_equal({:name => ["can't be blank"]}, c.errors.messages)
  end

  test "empty course number" do
    c = Course.create({:name => "bob", :number => "", :credit_hours => 3})
    refute c.valid?
    refute c.save
    assert_equal({:number => ["can't be blank", "is not a number"]}, c.errors.messages)
  end

  test "course number not a number" do
    c = Course.create({:name => "bob", :number => "abc", :credit_hours => 3})
    refute c.valid?
    refute c.save
    assert_equal({:number => ["is not a number"]}, c.errors.messages)
  end

  test "empty credit hours" do
    c = Course.create({:name => "bob", :number => 42, :credit_hours => ""})
    refute c.valid?
    refute c.save
    assert_equal({:credit_hours => ["can't be blank", "is not a number"]}, c.errors.messages)
  end

  test "credit hours not a number" do
    c = Course.create({:name => "bob", :number => 42, :credit_hours => "abc"})
    refute c.valid?
    refute c.save
    assert_equal({:credit_hours => ["is not a number"]}, c.errors.messages)
  end
end
