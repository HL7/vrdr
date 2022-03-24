require "json"
require "pry"
codesystems = {
  "PH_RoleCode_HL7_V3" => "$roleCode",
  "PH_ContactRole_HL7_2x" => "$contactRole",
  "PH_SNOMED-CT" => "$sct",
  "PH_NullFlavor_HL7_V3" => "$v3-NullFlavor",
  "PH_PHINVS_CDC" => "",
  "PH_PlaceOfOccurrence_ICD-10_WHO" => "$icd10PlaceOfOccurence",
  "PH_Country_GEC" => "$PH_Country_GEC",
  "PH_County_FIPS_6-4" => "$PH_County_FIPS_6-4",
  "PH_State_FIPS_5-2" => "$PH_State_FIPS_5-2",
}

i = 0
File.readlines(ARGV[0]).each do |line|
  columns = line.split("\t")
  #    next if !(columns[0][0] =~ /[A-Z]/) || columns[0].upcase != columns[0]
  i = i + 1
  next if i < 5
  # binding.pry
  code = columns[0]
  #    code = code[2..4] if code.length >3
  puts "* " + codesystems[columns[6]] + "#" + code + " \"" + columns[2] + "\""
end
