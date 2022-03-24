require "json"
require "pry"

residence = File.open("residence.txt", "w")
birth = File.open("birth.txt", "w")
i = 0
countries = {}
duplicates = []
File.readlines(ARGV[0]).each do |line|
  columns = line.split(";")
  code = columns[1]
  name = columns[0]
  puts "input: " + code
  historic = columns[2] && columns[2].length > 0
  if countries[code]
    puts "duplicate: " + code + " historic = " + historic.to_s + " Initial_historic = " + countries[code][:historic].to_s.capitalize
    countries[code][:name] = countries[code][:name] + ", " + name.split(/ /).map(&:capitalize).join(" ")
    countries[code][:historic] = false if historic == false # if any synonym is not historic, the term isn't historic
    duplicates.append(code)
  else
    countries[code] = { :name => name.split(/ /).map(&:capitalize).join(" "), :historic => historic }
  end
end
countries.sort_by { _1.to_s }.each do |key, value|
  #   binding.pry
  puts "country = " + key
  residence.puts "* exclude CountryCodeCS#" + key if value[:historic]
  birth.puts "* #" + key + " \"" + value[:name] + "\" \"" + value[:name] + "\""
end
#    duplicates.sort
#    puts duplicates.sort.join(",")
