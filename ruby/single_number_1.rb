# URL - https://leetcode.com/problems/single-number/
# Given a non-empty array of integers, every element appears twice except for one. Find that single one.

# Note:

# Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

# Example 1:

# Input: [2,2,1]
# Output: 1
# Example 2:

# Input: [4,1,2,1,2]
# Output: 4

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  mapping = {}
  nums.each do |num|
      my_key = num.to_s
      count = mapping.has_key?(my_key) ?  mapping[my_key] + 1 : 1
      mapping[my_key] = count 
  end
  mapping.key(1).to_i
end

# Runtime: 56 ms, faster than 49.03% of Ruby online submissions for Single Number.
# Memory Usage: 11.6 MB, less than 5.06% of Ruby online submissions for Single Number.