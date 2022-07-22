require "json"
require "pry"
# Reads: birth.txt file,
#   * #RO "Romania" "Romania"
# and generates
#            new KeyValuePair<string, string>("AFGHANISTAN", "AF"),
residence = File.open("residence.txt", "w")
birth = File.open("birth.txt", "w")
i = 0

File.readlines(ARGV[0]).each do |line|
  code = line.split("\"")[0].split("#")[1].strip()
  name = line.split("\"")[1]
  puts "            new KeyValuePair<string, string>(\"#{name}\", \"#{code}\"),"
end
