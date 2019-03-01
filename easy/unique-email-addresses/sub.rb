require 'set'

# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
  s = Set.new
  emails.each do |email|
    name, domain = email.split('@')
    s << [name.gsub(/\+.*/, '').gsub(/\./, ''), domain]
  end
  s.length
end

#num_unique_emails ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]  # => 2



num_unique_emails ['robert.boyd@me.com', 'robertboyd@me.com', 'some@emai.com', 'so.m.e+thing@emai.com']


name = 'robert.boyd+a'
name.gsub(/\+.*/, '')
