=begin
namespace VRDR
{
    public static class ValueSets
    {
        public static class DeathLocationType {
            public static string[,] Codes = {
                { "63238001", "Hospital Dead on Arrival", VRDR.CodeSystems.SCT },
                { "440081000124100", "Decedent's Home", VRDR.CodeSystems.SCT },
                { "440071000124103", "Hospice", VRDR.CodeSystems.SCT },
                { "16983000", "Hospital Inpatient", VRDR.CodeSystems.SCT },
                { "450391000124102", "Death in emergency Room/Outpatient", VRDR.CodeSystems.SCT },
                { "450381000124100", "Death in nursing home/Long term care facility", VRDR.CodeSystems.SCT },
                { "OTH", "Other (Specify)", CodeSystems.PH_NullFlavor_HL7_V3 },
                { "UNK", "Unknown", CodeSystems.PH_NullFlavor_HL7_V3 }
            };
            public static string Hospital_Dead_on_Arrival = "63238001";
            public static string Decedents_Home = "440081000124100";
            ...
        }
    }
}
=end
require "json"
require "pry"
require "byebug"

codesystems = {
  "http://snomed.info/sct" => "VRDR.CodeSystems.SCT",
  "http://terminology.hl7.org/CodeSystem/v3-NullFlavor" => "VRDR.CodeSystems.PH_NullFlavor_HL7_V3",
  "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus" => "VRDR.CodeSystems.PH_MaritalStatus_HL7_2x",
  "http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-activity-at-time-of-death-cs" => "VRDR.CodeSystems.ActivityAtTimeOfDeath",
  "http://hl7.org/fhir/administrative-gender" => "VRDR.CodeSystems.HL7_Administrative_Gender",
  "http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-bypass-edit-flag-cs" => "VRDR.CodeSystems.BypassEditFlags",
  "http://terminology.hl7.org/CodeSystem/v3-EducationLevel" => "VRDR.CodeSystems.HL7_EducationLevel",
  "http://terminology.hl7.org/CodeSystem/v2-0360" => "VRDR.CodeSystems.HL7_DegreesCertificates",
  "http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-jurisdictions-cs" => "VRDR.CodeSystems.Jurisdictions",
  "http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-pregnancy-status-cs" => "VRDR.CodeSystems.PregnancyStatus",
  "http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-missing-value-reason-cs" => "VRDR.CodeSystem.MissingValueReason",


}
valuesets = {
    "ValueSet-vrdr-activity-at-time-of-death-vs.json" => "ActivityAtTimeOfDeath",
    "ValueSet-vrdr-administrative-gender-vs.json" => "AdministrativeGender",
#    "ValueSet-vrdr-birthplace-country-vs.json" => "BirthplaceCountry",
#    "ValueSet-vrdr-canada-provinces-vs.json" => "CanadaProvinces",
    "ValueSet-vrdr-certifier-types-vs.json" => "CertifierTypes",
    "ValueSet-vrdr-contributory-tobacco-use-vs.json" => "ContributoryTobaccoUse",
    "ValueSet-vrdr-edit-bypass-01-vs.json" => "Bypass01",
    "ValueSet-vrdr-edit-bypass-012-vs.json" => "Bypass012",
    "ValueSet-vrdr-edit-bypass-01234-vs.json" => "Bypass01234",
    "ValueSet-vrdr-edit-bypass-0124-vs.json" => "Bypass0124",
    "ValueSet-vrdr-education-level-vs.json" => "EducationLevel",
    "ValueSet-vrdr-filing-format-vs.json" => "FilingFormat",
    "ValueSet-vrdr-hispanic-origin-vs.json" => "HispanicOrigin",
    "ValueSet-vrdr-intentional-reject-vs.json" => "IntentionalReject",
#    "ValueSet-vrdr-jurisdiction-vs.json" => "Jurisdiction",
#    "ValueSet-vrdr-jurisdictions-provinces-vs.json" => "JurisdictionsAndProvinces",
    "ValueSet-vrdr-manner-of-death-vs.json" => "MannerOfDeath",
    "ValueSet-vrdr-marital-status-vs.json" => "MaritalStatus",
    "ValueSet-vrdr-method-of-disposition-vs.json" => "MethodOfDisposition",
    "ValueSet-vrdr-not-applicable-vs.json" => "NotApplicable",
    "ValueSet-vrdr-place-of-death-vs.json" => "PlaceOfDeath",
    "ValueSet-vrdr-pregnancy-status-vs.json" => "PregnancyStatus",
    "ValueSet-vrdr-race-code-vs.json" => "RaceCode",
    "ValueSet-vrdr-race-missing-value-reason-vs.json" => "RaceMissingValueReason",
    "ValueSet-vrdr-race-recode-40-vs.json" => "RaceRecode40",
#    "ValueSet-vrdr-residence-country-vs.json" => "ResidenceCountry",
#    "ValueSet-vrdr-states-territories-provinces-vs.json" => "StatesTerritoriesAndProvinces",
#    "ValueSet-vrdr-system-reject-vs.json" => "ResidenceCountry",
    "ValueSet-vrdr-transax-conversion-vs.json" => "TransaxConversion",
    "ValueSet-vrdr-transportation-incident-role-vs.json" => "TransportationIncidentRole",
    "ValueSet-vrdr-units-of-age-vs.json" => "UnitsOfAge",
#    "ValueSet-vrdr-usstates-territories-vs.json" => "USStatesAndTerritories",
    "ValueSet-vrdr-yes-no-not-applicable-vs.json" => "YesNoNotApplicable",
    "ValueSet-vrdr-yes-no-unknown-not-applicable-vs.json" => "YesNoUnknownNotApplicable",
    "ValueSet-vrdr-yes-no-unknown-vs.json" => "YesNoUnknown"
}
basedir = ARGV[0]

puts "namespace VRDR
    {
         /// <summary> ValueSet Helpers </summary>
         public static class ValueSets"
puts "    {"
valuesets.each do |vsfile, fieldname|
  filename = ARGV[0] + "/" + vsfile
  ruby = JSON.parse(File.read(filename))
  puts "            /// <summary> #{fieldname} </summary>
            public static class #{fieldname} {
                /// <summary> Codes </summary>
                public static string[,] Codes = {"
  groups = ruby["compose"]["include"]
  first = true
  # debugger
  groups.each { |group|
    system = group["system"]
    if codesystems[system]
      system = codesystems[system]
    end
    next if group["concept"] == nil
    for concept in group["concept"]
      puts "," if first == false
      first = false
      print "                    { \"#{concept["code"]}\", \"#{concept["display"]}\", #{system} }"
    end
  }
  puts "\n            };"
  groups.each { |group|
    system = group["system"]
    if codesystems[system]
      system = codesystems[system]
    end
    next if group["concept"] == nil
    for concept in group["concept"]
      next if concept["display"] == nil
      display = concept["display"].gsub("/", " ")
      display = display.gsub(",", " ")
      display = display.gsub(";", " ")
      display = display.gsub("'", "")
      display = display.split(" ").map(&:capitalize).join("_")
      if display[0][/\d/] then display = "_" + display end
      puts "            /// <summary> #{display} </summary>"
      puts "            public static string  #{display} = \"#{concept["code"]}\";"
    end
  }
  puts "        };"
end
puts "   }
}"
