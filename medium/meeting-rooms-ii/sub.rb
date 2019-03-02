# # Definition for an interval.
# class Interval
#     attr_accessor :start, :end
#     def initialize(s=0, e=0)
#         @start = s
#         @end = e
#     end
# end

# @param {Interval[]} intervals
# @return {Integer}
def min_meeting_rooms(intervals)
  return 0 if intervals.empty?
  start_times = []
  end_times = []
  intervals.each do |interval|
    start_times << interval.start
    end_times << interval.end
  end

  start_times.sort!
  end_times.sort!

  max = 1
  cur = 0
  i = 0
  j = 0
  while i < intervals.count and j < intervals.count do
    if start_times[i] < end_times[j]
      cur += 1
      max = [cur, max].max
      i += 1
    else
      cur -= 1
      max = [cur, max].max
      j += 1
    end
  end
  max
end




# min_meeting_rooms([[0, 30],[5, 10],[15, 20]].map { |a, b| Interval.new(a, b) })
# min_meeting_rooms([[2,7]].map { |a, b| Interval.new(a, b) })

# min_meeting_rooms([[5,8],[6,8]].map { |a, b| Interval.new(a, b) })
