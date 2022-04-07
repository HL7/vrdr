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
  "http://unitsofmeasure.org" => "VRDR.CodeSystems.UnitsOfMeasure",
  "http://terminology.hl7.org/CodeSystem/v2-0136" => "VRDR.CodeSystems.YesNo"
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
outfilename = ARGV[1] + "/ValueSets.cs"
puts outfilename
file = file=File.open(outfilename,"w")
systems_without_constants = []
file.puts "namespace VRDR
{
    /// <summary> ValueSet Helpers </summary>
    public static class ValueSets"
file.puts "    {"
valuesets.each do |vsfile, fieldname|
        puts "Generating output for #{vsfile}"
        filename = ARGV[0] + "/resources/" + vsfile
        value_set_data = JSON.parse(File.read(filename))
        file.puts "        /// <summary> #{fieldname} </summary>
        public static class #{fieldname} {
            /// <summary> Codes </summary>
            public static string[,] Codes = {"
        groups = value_set_data["compose"]["include"]
        first = true
        groups.each { | group |
            system = group["system"]
            if codesystems[system]
                system = codesystems[system]
            else
              systems_without_constants << system
            end
            next if group["concept"] == nil
            for concept in group["concept"]
                file.puts "," if first == false
                first = false
                file.print "                { \"#{concept["code"]}\", \"#{concept["display"]}\", #{system} }"
            end
        }
        file.puts "\n            };"
        groups.each { | group |
            system = group["system"]
            if codesystems[system]
                system = codesystems[system]
            end
            next if group["concept"] == nil
            for concept in group["concept"]
                next if concept["display"] == nil
                display = concept["display"].split(/-[A-Z]/).first
                display = display.split(/[^a-z]+/i).map(&:capitalize).join('_')
                if display[0][/\d/] then display = "_" + display end
                file.puts "            /// <summary> #{display} </summary>"
                file.puts "            public static string  #{display} = \"#{concept["code"]}\";"
            end
        }
        file.puts "        };"
    end
file.puts "   }
}"
puts
puts "Saw the following code systems that don't have constants:"
puts
puts systems_without_constants.uniq
puts
puts "Suggestions:"
puts
systems_without_constants.uniq.each do |system|
  puts "        /// <summary> #{system} </summary>"
  puts "        public static string XYZ = \"#{system}\";"
end
