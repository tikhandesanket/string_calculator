require 'minitest/autorun'
require_relative 'string_calculator'

class TestStringCalculator < Minitest::Test
  # Test for empty string
  def test_empty_string
    assert_equal 0, StringCalculator.add("")
  end

  # Test for single number
  def test_single_number
    assert_equal 1, StringCalculator.add("1")
  end

  # Test for two numbers
  def test_two_numbers
    assert_equal 6, StringCalculator.add("1,5")
  end

  # Test for multiple numbers
  def test_multiple_numbers
    assert_equal 10, StringCalculator.add("1,2,3,4")
  end

  # Test with newline between numbers
  def test_newline_between_numbers
    assert_equal 6, StringCalculator.add("1\n2,3")
  end

  # Test with custom delimiter
  def test_custom_delimiter
    assert_equal 3, StringCalculator.add("//;\n1;2")
  end

  # Test for negative numbers (with different cases)
  def test_negative_numbers_case_1
    error = assert_raises(RuntimeError) { StringCalculator.add("1,-11\n,9") }
    assert_equal "negative number not allowed", error.message
  end

  def test_negative_numbers_case_2
    error = assert_raises(RuntimeError) { StringCalculator.add("1,-21\n,9") }
    refute_equal "negative number is allowed", error.message
  end

  def test_negative_numbers_case_3
    error = assert_raises(RuntimeError) { StringCalculator.add("-1,2,-3//;\n1;-9") }
    refute_equal "negative numbers -1,-3,-9 are not allowed", error.message
  end
end
