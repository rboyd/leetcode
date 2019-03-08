class RecentCounter
    def initialize()
      @q = []
      @i = 0
    end

    def ping(t)
      @q << t
      @i += 1 while @i < @q.size-1 and @q[@i] < t-3000
      @q.size - @i
    end
end


o = RecentCounter.new
o.ping(1)
o.ping(100)
o.ping(3001)
o.ping(3002)
