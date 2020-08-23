# URL = https://leetcode.com/problems/last-stone-weight/
# We have a collection of stones, each stone has a positive integer weight.

# Each turn, we choose the two heaviest stones and smash them together.  Suppose the stones have weights x and y with x <= y.  The result of this smash is:

# If x == y, both stones are totally destroyed;
# If x != y, the stone of weight x is totally destroyed, and the stone of weight y has new weight y-x.
# At the end, there is at most 1 stone left.  Return the weight of this stone (or 0 if there are no stones left.)

 

# Example 1:

# Input: [2,7,4,1,8,1]
# Output: 1
# Explanation: 
# We combine 7 and 8 to get 1 so the array converts to [2,4,1,1,1] then,
# we combine 2 and 4 to get 2 so the array converts to [2,1,1,1] then,
# we combine 2 and 1 to get 1 so the array converts to [1,1,1] then,
# we combine 1 and 1 to get 0 so the array converts to [1] then that's the value of last stone.

# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  return stones[0] if stones.length == 1

  while stones.length > 1 do
    x, y = find_two_heaviest(stones)
    if x==y
      stones.slice!(stones.index(x))
      stones.slice!(stones.index(y))
    elsif x < y
      stones.slice!(stones.index(x))
      new_weight = y - x
      stones[stones.index(y)] = new_weight
    end
  end

  stones.empty? ? 0 : stones[0]
end

def find_two_heaviest(stones)
  # sort in ascending order and then reverse
  sorted_stones = stones.sort.reverse

  return sorted_stones[1], sorted_stones[0]
end

# Runtime: 48 ms, faster than 46.15% of Ruby online submissions for Last Stone Weight.
# Memory Usage: 9.8 MB, less than 7.69% of Ruby online submissions for Last Stone Weight.
