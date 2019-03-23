# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
    max = 0
    running = 0
    nums.each do |num|
        if num == 1
            running += 1
            max = running if running > max
        else
            running = 0
        end
    end
    max
end
