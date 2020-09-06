def binary_search(list, item)
  low = 0
  high = list.length - 1

  while low <= high do
    mid = (low + high) / 2
    guess = list[mid]
    found = false

    if guess == item
      found = true
      break
    elsif guess > item
      high = mid - 1
    else
      low = mid + 1
    end
  end

  found ? mid : "None"
end
