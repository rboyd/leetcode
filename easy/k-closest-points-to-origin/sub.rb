# @param {Integer[][]} points
# @param {Integer} k
# @return {Integer[][]}
def k_closest(points, k)
  m = {}
  all_d = []
  points.each do |point|
    x, y = point
    dist = Math.sqrt(x**2 + y**2)
    all_d << dist
    if m.has_key?(dist)
      m[dist] << point
    else
      m[dist] = [point]
    end
  end

  m
  keys = all_d.sort.first(k).uniq
 ret = []
 keys.each do |k|
   m[k].each { |el| ret << el }
 end
 ret
end


# block to sort_by
def k_closest2(points, k)
  points.sort_by { |point| Math.sqrt(point[0]**2 + point[1]**2) }.first(k)
end


# XXX TODO: research quickselect solution, min or max heap solution

# x, y = [1, 2]
# x
# y


k_closest([[3,3],[5,-1],[-2,4]], 2) == k_closest2([[3,3],[5,-1],[-2,4]], 2)


# [1,2,3].first(2)
