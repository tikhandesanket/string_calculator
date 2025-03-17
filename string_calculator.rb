# In this file, we will add logic and a method that will return the execution result.
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    array_in_numbers = numbers.scan(/-?\d+|[a-zA-Z]+/).map{|ele| ele.to_i}
    return 0 if array_in_numbers.empty?
    negative_nums = array_in_numbers.select(&:negative?)
    p negative_nums
    if !negative_nums.empty?
      raise negative_nums.size==1 ? "negative number not allowed" : "negative numbers#{negative_nums.join("")}are not allowed"
    else
      return array_in_numbers.map{|num| num.to_i}.sum
    end
  end
end