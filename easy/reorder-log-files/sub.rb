# @param {String[]} logs
# @return {String[]}
def reorder_log_files(logs)
  alpha_log = []
  digit_log = []
  logs.each do |log|
    _, log1, *_ = log.split(/ /)
    if log1 =~ /^[0-9]+$/
      digit_log << log
    else
      alpha_log << log
    end
  end

  alpha_log.sort_by! { |log| ident, log1, *rest = log.split(/ /); [log1, rest, ident] }
  alpha_log + digit_log
end

# reorder_log_files(["a1 9 2 3 1","g1 act car","zo4 4 7","ab1 off key dog","a8 act zoo"])

# reorder_log_files(["1 n u", "r 527", "j 893", "6 14", "6 82"])  # => ["1 n u", "r 527", "j 893", "6 14", "6 82"]
# reorder_log_files(["j mo", "5 m w", "g 07", "o 2 0", "t q h"])

