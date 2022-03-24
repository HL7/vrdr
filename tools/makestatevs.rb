require "json"
require "pry"

i = 0
File.readlines(ARGV[0]).each do |line|
  columns = line.split("\t")
  #    next if !(columns[0][0] =~ /[A-Z]/) || columns[0].upcase != columns[0]
  puts "* $stateCS#" + columns[0].chomp + "  \"" + columns[1].chomp + "\""
end
