# In this file, we will add test cases to where three laws for test cases will be followed
require 'minitest/autorun'
require_relative 'string_calculator'
class TestStringCalculator < Minitest::Test
  def test_empty_string
    assert_equal 0, StringCalculator.add("")
  end

  def test_single_number
    assert_equal 1, StringCalculator.add("1")
  end
end