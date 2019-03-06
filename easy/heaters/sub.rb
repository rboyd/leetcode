# # # @param {Integer[]} houses
# # # @param {Integer[]} heaters
# # # @return {Integer}
# # def find_radius(houses, heaters)
# #   houses.sort!
# #   heaters.sort!

# #   min_radius = 0
# #   j = 0

# #   for i in (0..houses.length-1)
# #     trial = Float::INFINITY
# #     last_heater_pos = Float::INFINITY

# #     next if (houses[i] - last_heater_pos).abs <= min_radius
# #     for j in (0..heaters.length-1)
# #       distance = (heaters[j] - houses[i]).abs
# #       if distance <= trial
# #         last_heater_pos = j
# #         trial = distance
# #       end
# #       trial = [(heaters[j] - houses[i]).abs, trial].min
# #     end
# #     min_radius = [trial, min_radius].max
# #   end

# #   min_radius
# # end


houses = Array.new(Random.rand(100)) { Random.rand(10**9) }.uniq
heaters = Array.new(Random.rand(100)) { Random.rand(10**9) }.uniq



# # find_radius(houses, heaters)



# # def find_radius(houses, heaters)
# #   i = 0, j = 0, min_radius = Float::INFINITY

# #   last_heater = heaters[0]
# #   last_house = houses[0]

# #   landscape = (houses.map { |i| [i, :house] } + heaters.map{ |i| [i, :heater] }).sort!

# #   (0..landscape.length-1).each do |i|
# #     if landscape[i][1] == :heater
# #       last_heater = [last_heater, i].max
# #     else
# #       last_house = [last_house, i].max
# #       # check distance to last house, if it's more increase min_radius
# #       d = (last_house - last_heater).abs
# #       min_radius = [min_radius, d].max
# #     end
# #   end
  
  
# # end



# # if it ends in a house check against last heater, if distance is > min_radius then increase min_radius





# # def find_radius(houses, heaters)
# #   i = 0, j = 0, min_radius = 0    # => [0, 0, 0]

# #   last_heater = heaters[0]  # => 1
# #   last_house = houses[0]    # => 1

# #   landscape = (houses.map { |i| [i, :house] } + heaters.map{ |i| [i, :heater] }).sort!  # => [[1, :heater], [1, :house], [2, :house], [3, :house], [4, :heater], [4, :house]]

# #   (0..landscape.length-1).each do |i|       # => 0..5
# #     pos = landscape[i][0]                   # => 1,    1,     2,     3,     4,    4
# #     if landscape[i][1] == :heater           # => true, false, false, false, true, false
# #       last_heater = [last_heater, pos].max  # => 1, 4
# #     else
# #       last_house = [last_house, pos].max    # => 1, 2, 3, 4
# #       # check distance to last house, if it's more increase min_radius
# #       d = (last_house - last_heater).abs    # => 0, 1, 2, 0
# #       min_radius = [min_radius, d].max      # => 0, 1, 2, 2
# #     end                                     # => 1, 0, 1, 2, 4, 2
# #   end                                       # => 0..5
  
# #   min_radius  # => 2
# # end           # => :find_radius





# def find_radius(houses, heaters)

#   houses.sort!
#   heaters.sort!

#   min_radius = 0
#   i = 0
#   j = 0
#   i
#   houses.length
#   (0..houses.length-1).each do |i|
#     i
#     next_j = heaters.bsearch_index { |x| x >= houses[i] }
#     if next_j
#       d = (heaters[j] - houses[i]).abs
#       d_to_next = (heaters[next_j] - houses[i]).abs
#       if d_to_next <= d
#         j = next_j
#       end
#     end

#     d = (heaters[j] - houses[i]).abs
#     min_radius = [min_radius, d].max
#   end

#   min_radius
# end

# find_radius([1,2,3,4],[1,4])






def find_radius(houses, heaters)
  houses.sort!
  heaters.sort!

  min_radius = 0
  j = 0
  houses.each do |house|
    house
    while j+1 < heaters.length and (heaters[j+1] - house).abs <= (heaters[j] - house).abs
      j += 1
    end

    min_radius = [min_radius, (heaters[j] - house).abs].max
  end

  min_radius
end


#find_radius([1,2,3,4], [1,4])  # => 1


# find_radius([680982612, 550756500, 209367343, 426427972, 747617908, 542966664, 660894441, 995330007, 18054531, 415731349, 775306746, 407367236, 879060879, 961710521, 471329041, 446390884, 938076600, 549351133, 951710263, 175157316, 244236553, 887109818, 555335336, 596425263, 343941, 161213698],
#             [893957068, 377884643, 493210645, 701719643, 616081367, 942690951, 203509581, 124364922, 351941461, 621461045, 867212321, 27151167, 490990345, 675123120, 668334569, 339372197, 200810135, 585039573, 621949387, 901996170, 183869667, 552434104, 163279717, 615278043, 5475205, 880473022, 869626559, 854435997, 744591467, 138750826, 332758590, 999532766, 563548368, 606764832, 725440683, 496407699, 61759693, 351474408, 644040594, 778424142, 381587461, 999320674, 568173002, 871134645, 869107408, 754549226, 207075353, 182532765, 616557963, 48117137, 97401427, 851338298, 492320194, 351087295, 371977315, 580774496, 948511147, 150069993, 88547866, 451129020, 537075908, 758498864, 232095354, 312746749, 590222403, 840676086, 843997198, 796982325, 415028100, 263803624, 579020027])

find_radius([1,2,3,4,7,8,9,6],[1,2,3,4,7,8,9,6])
