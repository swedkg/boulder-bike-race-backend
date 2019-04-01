require "test_helper"

class Api::SloganTest < ActiveSupport::TestCase
  # validate first name

  test "validate first name is blank" do
    slogan = Api::Slogan.new(first_name: "")
    # puts "slogan:", slogan
    slogan.valid?
    # puts erros: slogan.errors
    assert slogan.errors.added?(:first_name, :blank, {message: "Your first name cannot be blank"})
  end

  test "validate first name too short" do
    slogan = Api::Slogan.new(first_name: "ab")
    # puts "slogan:", slogan
    slogan.valid?
    # puts erros: slogan.errors.as_json
    assert slogan.errors.added?(:first_name, :too_short, {count: 3})
    assert slogan.errors.added?(:first_name, "Your first name is too short.")
  end

  test "validate first name too long" do
    slogan = Api::Slogan.new(first_name: "12345678901234567890123")
    # puts "slogan:", slogan
    slogan.valid?
    # puts erros: slogan.errors.as_json
    assert slogan.errors.added?(:first_name, :too_long, {count: 20})
    assert slogan.errors.added?(:first_name, "Your first name is too long (20 characters max).")
  end

  # validate last name

  test "validate last name is blank" do
    slogan = Api::Slogan.new(last_name: "")
    # puts "slogan:", slogan
    slogan.valid?
    # puts erros: slogan.errors
    assert slogan.errors.added?(:last_name, :blank, {message: "Your last name cannot be blank"})
  end

  test "validate last name too short" do
    slogan = Api::Slogan.new(last_name: "ab")
    # puts "slogan:", slogan
    slogan.valid?
    # puts erros: slogan.errors.as_json
    assert slogan.errors.added?(:last_name, :too_short, {count: 3})
    assert slogan.errors.added?(:last_name, "Your last name is too short.")
  end

  test "validate last name too long" do
    slogan = Api::Slogan.new(last_name: "1234567890123456789012345678901234567890123")
    # puts "slogan:", slogan
    slogan.valid?
    # puts erros: slogan.errors.as_json
    assert slogan.errors.added?(:last_name, :too_long, {count: 40})
    assert slogan.errors.added?(:last_name, "Your last name is too long (40 characters max).")
  end

  # validate slogan

  test "validate slogan is blank" do
    slogan = Api::Slogan.new(slogan: "")
    # puts "slogan:", slogan
    slogan.valid?
    # puts erros: slogan.errors
    assert slogan.errors.added?(:slogan, :blank, {message: "Your slogan cannot be blank"})
  end

  test "validate slogan too short" do
    slogan = Api::Slogan.new(slogan: "ab")
    # puts "slogan:", slogan
    slogan.valid?
    # puts erros: slogan.errors.as_json
    assert slogan.errors.added?(:slogan, :too_short, {count: 3})
    assert slogan.errors.added?(:slogan, "Your slogan is too short.")
  end

  test "validate slogan too long" do
    slogan = Api::Slogan.new(slogan: "12345678901234567890123456789012345678901234567890123")
    # puts "slogan:", slogan
    slogan.valid?
    # puts erros: slogan.errors.as_json
    assert slogan.errors.added?(:slogan, :too_long, {count: 50})
    assert slogan.errors.added?(:slogan, "Your slogan is too long (50 characters max).")
  end

  # validate email

  test "validate email is blank" do
    slogan = Api::Slogan.new(email: "")
    # puts "slogan:", slogan
    slogan.valid?
    # puts erros: slogan.errors
    assert slogan.errors.added?(:email, :blank, {message: "The email is required"})
  end

  test "validate email uniqueness" do
    slogan = Api::Slogan.new(email: "john.doe@example.com")
    # puts "slogan:", slogan
    slogan.valid?
    # puts erros: slogan.errors
    assert slogan.errors.added?(:email, :taken, {value: "john.doe@example.com"})
    assert slogan.errors.added?(:email, "This email is already in use")
  end

  test "validate email format" do
    slogan = Api::Slogan.new(email: "@ds.com")
    # puts "slogan:", slogan
    slogan.valid?
    # puts erros: slogan.errors
    assert slogan.errors.added?(:email, :invalid, {value: "@ds.com"})
    assert slogan.errors.added?(:email, "The email is invalid")
  end
end
