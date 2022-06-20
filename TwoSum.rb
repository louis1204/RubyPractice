# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    seen = {}
    for i in 0 ... nums.size
        if seen.key?(target - nums[i])
            return [seen[target - nums[i]], i]
        end
        seen[nums[i]] = i
    end
    return []
end

puts two_sum([2,7,11,15], 9)
