# Given an array of integers that is already sorted in ascending order, find two numbers such that they add up to a specific target number.
# The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2.
# Note:
# Your returned answers (both index1 and index2) are not zero-based.
# You may assume that each input would have exactly one solution and you may not use the same element twice.
# Example:

 input = [2,7,11,15]
 output = [1,2]
#  Explanation: The sum of 2 and 7 is 9. Therefore index1 = 1, index2 = 2.
#  要求： x + y = 9 && x.index < y.index

#解題思路
# x從陣列的第一個開始跑
# 9 - x = y (某個數字)
# 判斷y有沒有在陣列裡 
#   有=>找出index
#        =>判斷此index 是否小於x的index
#             =>是，列出x y 跟他們的index
#             =>否,不做事

target = 18
input.reduce(0) do |sum, num|
  y = target - num
  # p num
  if input.include?(y) && (input.index(num) < input.index(y))
      # p input.index(y) + 1
      # p input.index(num) +1
      p "Explanation: The sum of #{num} and #{y} is #{target}. Therefore index1 = #{input.index(num) +1}, index2 = #{input.index(y) + 1}." 
  end
end
# def expect(a,b)
#   sum(a) == b
# end

# expect ([2,7,11,15],9)