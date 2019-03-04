
# @param {Integer[]} nums
# @return {Integer[][]}
def subsets_with_dup(nums)
    return [] if nums.empty?
    ret = []
    0.upto(nums.length) do |i|
        ret += nums.combination(i).to_a.map(&:sort)
    end
    ret.uniq
end
