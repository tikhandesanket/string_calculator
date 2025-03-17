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

  def test_two_numbers
    assert_equal 6, StringCalculator.add("1,5")
  end

  def test_multiple_numbers
    assert_equal 10, StringCalculator.add("1,2,3,4")
  end

  # added two cases with delimiters start
  def test_newline_between_numbers
    assert_equal 6, StringCalculator.add("1\n2,3")
  end

  def test_custom_delimiter
    assert_equal 3, StringCalculator.add("//;\n1;2")
  end

  # added two cases with delimiters end
end