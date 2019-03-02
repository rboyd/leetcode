# Definition for an interval.
class Interval
    attr_accessor :start, :end
    def initialize(s=0, e=0)
        @start = s
        @end = e
    end
end

# @param {Interval[]} intervals
# @return {Integer}
def can_attend_meetings(intervals)
  return true if intervals.empty?
  start_times = []
  end_times = []
  intervals.each do |interval|
    start_times << interval.start
    end_times << interval.end
  end

  start_times.sort!
  end_times.sort!

  0.upto(intervals.count-2) do |i|
    return false if end_times[i] > start_times[i+1]
  end
  true
end




can_attend_meetings([[0, 30],[5, 10],[15, 20]].map { |a, b| Interval.new(a, b) })
can_attend_meetings([[7,10],[2,4]].map { |a, b| Interval.new(a, b) })
# min_meeting_rooms([[2,7]].map { |a, b| Interval.new(a, b) })

# min_meeting_rooms([[5,8],[6,8]].map { |a, b| Interval.new(a, b) })


# Definition for an interval.
# class Interval
#     attr_accessor :start, :end
#     def initialize(s=0, e=0)
#         @start = s
#         @end = e
#     end
# end

# @param {Interval[]} intervals
# @return {Boolean}
def can_attend_meetings(intervals)
    
end
