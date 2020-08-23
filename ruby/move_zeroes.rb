# URL - https://leetcode.com/problems/move-zeroes/
# Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

# Example:

# Input: [0,1,0,3,12]
# Output: [1,3,12,0,0]
# Note:

# 1. You must do this in-place without making a copy of the array.
# 2. Minimize the total number of operations.

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  array_length = nums.length
  index = 0
  zeroes_found = 0
  while index < nums.length do
    break if index + zeroes_found + 1 == array_length
    if nums[index] == 0
      nums.slice!(index)
      nums.push(0)
      zeroes_found += 1
    else
      index += 1
    end
  end
  nums
end

# Runtime: 80 ms, faster than 21.09% of Ruby online submissions for Move Zeroes.
# Memory Usage: 10.1 MB, less than 58.18% of Ruby online submissions for Move Zeroes.