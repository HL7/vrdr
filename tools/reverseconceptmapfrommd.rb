require "json"
require "pry"
require "byebug"

i = 0

File.readlines(ARGV[0]).each do |line|
  columns = line.split("|")
  next if columns.length != 6
  puts "* insert MapConcept( ##{columns[3].strip},  \"#{columns[4].strip}\",##{columns[1].strip}, \"#{columns[2].strip}\")"
end