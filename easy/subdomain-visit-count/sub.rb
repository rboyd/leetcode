#require 'set'

# @param {String[]} cpdomains
# @return {String[]}
def subdomain_visits(cpdomains)
  tally = {}
  cpdomains.each do |cpdomain|
    visits, domain = cpdomain.split(' ')
    visits = visits.to_i

    parts = domain.split(/\./)
    (0..parts.length-1).each do |i|
      d = parts[i..-1].join('.')
      if tally.has_key?(d)
        tally[d] = tally[d] + visits
      else
        tally[d] = visits
      end
    end
  end
  tally.map { |k, v| v.to_s + ' ' + k }
end

# Set.new(subdomain_visits(["900 google.mail.com", "50 yahoo.com", "1 intel.mail.com", "5 wiki.org"])) == Set.new(["901 mail.com","50 yahoo.com","900 google.mail.com","5 wiki.org","5 org","1 intel.mail.com","951 com"])
# subdomain_visits(["9001 discuss.leetcode.com"]) == ["9001 discuss.leetcode.com", "9001 leetcode.com", "9001 com"]
