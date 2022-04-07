require "json"
require "pry"
require "byebug"

i = 0
# * #6 "Artificial code conversion; no other action" "Artificial code conversion; no other action"
File.readlines(ARGV[0]).each do |line|
  next if line[0] != '*'
  split1 = line.split("#")
  next if split1.length < 2
  code = split1[1].split(" ")[0]
  display = line.split("\"")[1]
  puts "* insert MapConcept(##{code.strip}, \"#{display.strip.gsub(',','\,')}\", ##{code.strip},  \"#{display.strip.gsub(',','\,')}\")"
end
