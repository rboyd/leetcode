# Definition for an interval.
class Interval
    attr_accessor :start, :end
    def initialize(s=0, e=0)
        @start = s
        @end = e
    end
end

def overlapping?(a, b)
  return true if a.end.between?(b.start, b.end)
  return true if b.end.between?(a.start, a.end)
  false
end

# @param {Interval[]} intervals
# @return {Interval[]}
def merge(intervals)
  intervals.sort_by! { |intv| intv.start }
  ret = []
  curr = nil
  intervals.each do |intv|
    if curr.nil?
      curr = intv
    else
      if overlapping?(curr, intv)
        curr = Interval.new([curr.start, intv.start].min,
                            [curr.end, intv.end].max)
      else
        ret << curr
        curr = intv
      end
    end
  end
  ret << curr if curr
  ret
end

def build_interval(intervals)
  intervals.map { |interval| Interval.new(interval[0], interval[1]) }
end




merge(build_interval([[2,3],[4,5],[6,7],[8,9],[1,10]]))
