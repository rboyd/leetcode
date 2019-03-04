# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
    ret = []
    0.upto(nums.length) do |i|
        ret += nums.combination(i).to_a
    end
    ret
end
