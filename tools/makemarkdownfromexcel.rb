require "json"
require "pry"
require "roo"

def get_file_type(file)
  File.extname(file).gsub(".", "")
end

def open_spreadsheet(file)
  extension = get_file_type(file)
  if ["csv", "xls", "xlsx"].include? extension
    Roo::Spreadsheet.open(file, extension: extension)
  else
    raise "Unknown file type: #{file}"
  end
end

IJEField = 0
IJEBegin = 1
IJELength = 2
Description = 3
IJEName = 4
CodeStructureDescription = 5
IJEOnly = 6
Profile = 7
FHIRField = 8
FHIRType = 9
FHIREncoding = 10

profiles = Hash.new
profiles["AutopsyPerformedIndicator"] = { :out => "StructureDefinition-vrdr-autopsy-performed-indicator-intro.md",
                                          :desc => "The Autopsy Performed Indicator profile captures the following values:" }
profiles["BirthRecordIdentifier"] = { :out => "StructureDefinition-vrdr-birth-record-identifier-intro.md",
                                     :desc => "The BirthRecordIdentifier captures the key identifiers for the Decedent's birth record.
                         It is relevant only in the case where the birth took place in a recognized jurisdiction." }
profiles["CauseOfDeathPart1"] = { :out => "StructureDefinition-vrdr-cause-of-death-part1-intro.md",
                                 :desc => "The [Certifier] is optionally referenced from this profile (performer).

                         Up to 4 instances of CauseOfDeathPart1 are ordered by a [CauseOfDeathPathway]." }
profiles["CauseOfDeathPart2"] = { :out => "StructureDefinition-vrdr-cause-of-death-part2-intro.md",
                                  :desc => "The [Certifier] is optionally referenced from this profile (performer)." }
profiles["Certifier"] = { :out => "StructureDefinition-vrdr-certifier-intro.md",
                          :desc => "The Certifier profile includes:" }
profiles["DeathCertificate"] = { :out => "StructureDefinition-vrdr-death-certificate-intro.md",
                                :desc => "The Death Certificate profile is a composition (bundle) comprising the core content of a death registration.

Additional content can be included (in what section?) in the Death Certificate based on standard resources and profiles.
Further profiling of Practitioner and PractitionerRole may be called for in the future.   At present, standard USCore profiles can be used, and these are not cited in this Implementation Guide.
For example:
* Funeral Home Licensee (USCorePractitionerRole)
* Mortician (USCorePractitioner)
* Funeral Home Director (USCorePractitionerRole)
* Death Pronouncement Performer (USCorePractitioner)

The content is broken down into the following sections:
* Decedent Demographics
    * [BirthRecordIdentifier]
    * [Decedent]
    * [DecedentAge]
    * [DecedentEducationLevel]
    * [DecedentFather]
    * [DecedentMilitaryService]
    * [Parameters2022]
    * [DecedentMother]
    * [DecedentSpouse]
    * [DecedentUsualWork]
* Death Investigation
    * [AutopsyPerformedIndicator]
    * [DeathDate]
    * [DeathLocation]
    * [DecedentPregnancyStatus]
    * [DecedentTransportationRole]
    * [ExaminerContacted]
    * [InjuryIncident]
    * [InjuryLocation]
    * [SurgeryDate]
    * [TobaccoUseContributedToDeath]
* Death Certification
    * [Certifier]
    * [DeathCertification]
    * [CauseOfDeathPart1]
    * [CauseOfDeathPathway]
    * [CauseOfDeathPart2]
    * [MannerOfDeath]
* Decedent Disposition
    * [DecedentDispositionMethod]
    * [DispositionLocation]
    * [FuneralHome]

The profile includes:" }
profiles["DeathCertificateDocument"] = { :out => "StructureDefinition-vrdr-death-certificate-document-intro.md",
  :desc => "The Death Certificate is a Bundle document that contains the [DeathCertificate] Bundle.

Note that the unique record identifier for every record consistes of YYYYJJFFFFFF, where YYYY is the year, JJ is the two character jurisdiction code, and FFFFFF is the six digit death certificate number.

In addition to  the [DeathCertificate] Bundle it includes the following content:
" }
profiles["DeathDate"] = {
  :out => "StructureDefinition-vrdr-death-date-intro.md",
  :desc => "The profile includes a component for the time of death pronouncement that is not currently used for death certificate submission.

  The certificate signing date is passed via the [DeathCertification] profile.

  The death date specifies the date the death occurred, not the date the record was submitted.

  The pronouncer of death can be specified by reference to a USCore Practitioner instance from the 'performer' field.   This instance should be included in the [DeathCertificateDocument] and referenced from the [DeathCertificate].",
}
profiles["DeathCertification"] = {
  :out => "StructureDefinition-vrdr-death-certification-intro.md",
  :desc => "The Death Certification profile includes:",
}
profiles["DeathLocation"] = { :out => "StructureDefinition-vrdr-death-location-intro.md",
  :desc => "" }
profiles["Decedent"] = { :out => "StructureDefinition-vrdr-decedent-intro.md",
  :desc => "The Decedent profile contains basic information about the decedent, including data that are essential to the death record." }
  profiles["DecedentAge"] = {
  :out => "StructureDefinition-vrdr-decedent-age-intro.md",
  :desc => "",
}
profiles["DecedentDispositionMethod"] = {
  :out => "StructureDefinition-vrdr-decedent-disposition-method-intro.md",
  :desc => "",
}
profiles["DecedentEducationLevel"] = {
  :out => "StructureDefinition-vrdr-decedent-education-level-intro.md",
  :desc => "",
}
profiles["DecedentFather"] = {
  :out => "StructureDefinition-vrdr-decedent-father-intro.md",
  :desc => "",
}
profiles["DecedentMilitaryService"] = {
  :out => "StructureDefinition-vrdr-decedent-military-service.md",
  :desc => "",
}
profiles["DecedentMother"] = {
  :out => "StructureDefinition-vrdr-decedent-mother-intro.md",
  :desc => "",
}
profiles["DecedentSpouse"] = {
  :out => "StructureDefinition-vrdr-decedent-spouse-intro.md",
  :desc => "",
}
profiles["DecedentPregnancyStatus"] = {
  :out => "StructureDefinition-vrdr-decedent-pregnancy-status-intro.md",
  :desc => "",
}
profiles["DecedentTransportationRole"] = {
  :out => "StructureDefinition-vrdr-decedent-transportation-role-intro.md",
  :desc => "",
}
profiles["DecedentUsualWork"] = {
  :out => "StructureDefinition-vrdr-decedent-usual-work-intro.md",
  :desc => "Implementors are free to use the coded fields with the defined valuesets, but coded values are not expected for death certificate submission.",
}
profiles["DispositionLocation"] = {
  :out => "StructureDefinition-vrdr-disposition-location-intro.md",
  :desc => "Implementors are free to use the name field for the name of the disposition location.",
}
profiles["ExaminerContacted"] = {
  :out => "StructureDefinition-vrdr-examiner-contacted-intro.md",
  :desc => "",
}
profiles["FuneralHome"] = {
  :out => "StructureDefinition-vrdr-funeral-home-intro.md",
  :desc => "",
}
profiles["InjuryIncident"] = {
  :out => "StructureDefinition-vrdr-injury-incident-intro.md",
  :desc => "",
}
profiles["InjuryLocation"] = {
  :out => "StructureDefinition-vrdr-injury-location-intro.md",
  :desc => "",
}
profiles["MannerOfDeath"] = {
  :out => "StructureDefinition-vrdr-manner-of-death-intro.md",
  :desc => "A reference to the [Certifier] may be provided through the performer field.",
}
profiles["ParamsForEmergingIssues"] = {
  :out => "StructureDefinition-vrdr-params-for-emerging-issues-intro.md",
  :desc => "ParamsForEmergingIssues profile supports placeholder fields required for 2022 submissions to NCHS.
                For documentation on their use see referenceTBD.
                There are 6 1-char fields (PLACE1_1-6), 3 8-char fields (PLACE8_1-3), and one 20-char field (PLACE20-1).",
}
profiles["SurgeryDate"] = {
  :out => "StructureDefinition-vrdr-surgery-date-intro.md",
  :desc => "",
}
profiles["TobaccoUseContributedToDeath"] = {
  :out => "StructureDefinition-vrdr-tobacco-use-contributed-to-death-intro.md",
  :desc => "",
}
profiles["AutomatedUnderlyingCauseOfDeath"] = {
  :out => "StructureDefinition-vrdr-automated-underlying-cause-of-death-intro.md",
  :desc => "",
}
profiles["ManualUnderlyingCauseOfDeath"] = {
  :out => "StructureDefinition-vrdr-manual-underlying-cause-of-death-intro.md",
  :desc => "",
}
profiles["RecordAxisCauseOfDeath"] = {
  :out => "StructureDefinition-vrdr-record-axis-cause-of-death-intro.md",
  :desc => "",
}
profiles["EntityAxisCauseOfDeath"] = {
  :out => "StructureDefinition-vrdr-entity-axis-cause-of-death-intro.md",
  :desc => "",
}
profiles["PlaceOfInjury"] = {
  :out => "StructureDefinition-vrdr-place-of-injury-intro.md",
  :desc => "",
}
profiles["CodedRaceAndEthnicity"] = {
  :out => "StructureDefinition-vrdr-race-and-ethnicity-intro.md",
  :desc => "",
}

puts ARGV[0]

xlsx = open_spreadsheet(ARGV[0])
xlsx.default_sheet = "Mortality"
filename = "generated/IJE_File_Layouts_Version_2021_FHIR.md"
puts filename
fullout = File.open(filename, "w")
fullout.puts "### Data Dictionary"
fullout.puts ""
fullout.puts "| **#** |  **Description**   |  **IJE Name**  | **Profile**  | **IJE only** |  **Field**  |  **Type**  | **Value Set**  |"
fullout.puts "| :---------: | --------------- | ------------ | ---------- | :------------: | ---------- | ---------- | -------------- |"

profiles.each do |key, value|
  puts key
  out = File.open("generated/" + value[:out], "w")
  out.puts "### Usage"
  out.puts value[:desc]
  out.puts ""
  out.puts "| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |"
  out.puts "| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |"
  xlsx.each_row_streaming do |row|
    next if row[Profile] == nil || row[Profile].value != key
    field = description = ijename = profile = fhirfield = fhirtype = fhirencoding = ijeonly = ""
    field = row[IJEField].value.to_s if row[IJEField]
    ijename = row[IJEName].value.to_s if row[IJEName]
    ijeonly = "x"  if row[IJEOnly] && (row[IJEOnly].to_s == "I" || row[IJEOnly].to_s == "i")
    # puts "field = " + field + " ijeonly =" + ijeonly
    profile = "[" + row[Profile].value.to_s + "]" if row[Profile]
    fhirfield = row[FHIRField].value.to_s if row[FHIRField]
    fhirtype = row[FHIRType].value.to_s if row[FHIRType]
    fhirencoding = row[FHIREncoding].value.to_s if row[FHIREncoding]
    description = row[Description].value.to_s if row[Description]
    fullout.puts "| " + field.chomp + " | " + description.chomp + " | " + ijename + "| " + profile + "| " + ijeonly + "|" + fhirfield + " | " + fhirtype + " | " + fhirencoding + " | "
    out.puts "| " + field.chomp + " | " + description.chomp + " | " + ijename + "| "  + ijeonly + "|" + fhirfield + " | " + fhirtype + " | " + fhirencoding + " | "
  end
  out.puts "{: .grid }"
  out.puts "{% include markdown-link-references.md %}"
  out.close
end
  fullout.puts "{: .grid }"
  fullout.puts "{% include markdown-link-references.md %}"
  fullout.close
