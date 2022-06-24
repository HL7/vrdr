#  ruby tools/makemarkdownfromexcel.rb input/images/IJE_File_Layouts_Version_2021_FHIR.xlsx ; cp generated/*.md input/pagecontent
#
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
                                 :desc => "The [Certifier] is optionally referenced from this profile (performer)." }
profiles["CauseOfDeathPart2"] = { :out => "StructureDefinition-vrdr-cause-of-death-part2-intro.md",
                                  :desc => "The [Certifier] is optionally referenced from this profile (performer)." }
profiles["Certifier"] = { :out => "StructureDefinition-vrdr-certifier-intro.md",
                          :desc => "The Certifier profile includes:" }
profiles["DeathCertificate"] = { :out => "StructureDefinition-vrdr-death-certificate-intro.md",
                                :desc => "The Death Certificate profile is a composition (bundle) comprising the core content of a death registration.

Notes:
* THe DeathCertificate is the first entry in the DeathCertificateDocument, and includes references to other entries in that Bundle.

Additional content can be included in the Death Certificate Document and referenced in the Death Certificate  based on standard resources and profiles.
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
    * [EmergingIssues]
    * [DecedentMother]
    * [DecedentSpouse]
    * [DecedentUsualWork]
* Death Investigation
    * [AutopsyPerformedIndicator]
    * [DeathDate]
    * [DeathLocation]
    * [DecedentPregnancyStatus]
    * [ExaminerContacted]
    * [InjuryIncident]
    * [InjuryLocation]
    * [SurgeryDate]
    * [TobaccoUseContributedToDeath]
* Death Certification
    * [Certifier]
    * [DeathCertification]
    * [CauseOfDeathPart1]
    * [CauseOfDeathPart2]
    * [MannerOfDeath]
* Decedent Disposition
    * [DecedentDispositionMethod]
    * [DispositionLocation]
    * [FuneralHome]
* Coded Content
    * [ActivityAtTimeOfDeath]
    * [AutomatedUnderlyingCauseOfDeath]
    * [ManualUnderlyingCauseOfDeath]
    * [CodedRaceAndEthnicity]
    * [EntityAxisCauseOfDeath]
    * [RecordAxisCauseOfDeath]
    * [PlaceOfInjury]
    * [CodingStatusValues]

**Note:**
NCHS will not process submissions where the death certificate contains a 'replace status' of updated_notforNCHS.

The profile includes:" }
profiles["DeathCertificateDocument"] = { :out => "StructureDefinition-vrdr-death-certificate-document-intro.md",
  :desc => "The Death Certificate is a Bundle document that contains the [DeathCertificate] Composition and the other instances comprising the content of the death record.

  Notes:
  * The DeathCertification.performed and DeathCertificateDocument.attester.time should both be set to the death certification time.
  * THe DeathCertificate is the first entry in the DeathCertificateDocument, and includes references to other entries in that Bundle.
  * The unique record identifier for every record consistes of YYYYJJFFFFFF, where YYYY is the year, JJ is the two character jurisdiction code, and FFFFFF is the six digit death certificate number.

In addition to  the [DeathCertificate] Composition it includes the following content:
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
  :desc => "
  Note:
  * The DeathCertification.performed and DeathCertificateDocument.attester.time should both be set to the death certification time.

  The Death Certification profile includes:",
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
profiles["DecedentUsualWork"] = {
  :out => "StructureDefinition-vrdr-decedent-usual-work-intro.md",
  :desc => "Implementors are free to use the coded fields with the defined valuesets for inter-jurisdictional exchange,
  but coded values are not expected for death certificate submission. The underlying profile requires coded
  values for validity, so a null flavor value can be used as in Example1. Similarly the effective period is required,
  and null flavor values can be substituted.  These constraints are expected to be relaxed in the ODH Usual Work profile prior
  to VRDR publication.

  Note that the coded industry and occupation fields are bound to PHINVADs-hosted value sets.  These are the only PHINVADs
  references in this IG.  For NCHS provided coded values the specific vocabulary used will depend on the death year.",
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
profiles["InputRaceAndEthnicity"] = {
  :out => "StructureDefinition-vrdr-input-race-and-ethnicity-intro.md",
  :desc => "",
}
profiles["MannerOfDeath"] = {
  :out => "StructureDefinition-vrdr-manner-of-death-intro.md",
  :desc => "A reference to the [Certifier] may be provided through the performer field.",
}
profiles["EmergingIssues"] = {
  :out => "StructureDefinition-vrdr-emerging-issues-intro.md",
  :desc => "EmergingIssues profile supports placeholder fields required for 2022 submissions to NCHS.
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
profiles["ActivityAtTimeOfDeath"] = {
  :out => "StructureDefinition-vrdr-activity-at-time-of-death-intro.md",
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
  :out => "StructureDefinition-vrdr-coded-race-and-ethnicity-intro.md",
  :desc => "",
}
profiles["CodingStatusValues"] = {
  :out => "StructureDefinition-vrdr-coding-status-values-intro.md",
  :desc => "",
}
profiles["CauseOfDeathCodedContentBundle"] = {
  :out => "StructureDefinition-vrdr-cause-of-death-coded-bundle-intro.md",
  :desc =>"This bundle is information-content equivalent to the traditional NCHS TRX format.

  This bundle contains:
  * Coded Content:
    * Activity at Time of Death [ActivityAtTimeOfDeath]
    * Underlying Cause of Death -- [AutomatedUnderlyingCauseOfDeath] and [ManualUnderlyingCauseOfDeath]
    * Entity Axis Cause of Death [EntityAxisCauseOfDeath]
    * Record Axis Cause of Death [RecordAxisCauseOfDeath]
    * Place of Injury [PlaceOfInjury]
    * Coding Status Values [CodingStatusValues] - various flags that are part of the TRX format
  * Input Content:
    * Cause of Death Part 1 - [CauseOfDeathPart1]
    * Cause of Death Part 2 - [CauseOfDeathPart2]
    * Manner of Death - [MannerOfDeath]
    * Autopsy Performed Indicator - [AutopsyPerformedIndicator]
    * Death Certification - [DeathCertification]
    * Injury Incident - [InjuryIncident]
    * Tobacco Use Contributed to Death - [TobaccoUseContributedToDeath]
    * Decedent Pregnancy Status - [DecedentPregnancyStatus]
    * Surgery Date - [SurgeryDate]
     ",
  }
  profiles["DemographicCodedContentBundle"] = {
  :out => "StructureDefinition-vrdr-demographic-coded-bundle-intro.md",
  :desc =>"
  This bundle is information-content equivalent to the traditional NCHS MRE format.

  This bundle contains:
  * Coded Content:
    * Coded Race and Ethnicity [CodedRaceAndEthnicity]
  * Input Content:
    * Input Race and Ethnicity - [InputRaceAndEthnicity]
     ",
  }

  profiles["RecordAxisCauseOfDeath"] = {
    :out => "StructureDefinition-vrdr-record-axis-cause-of-death-intro.md",
    :desc =>"
   Additional information on Record Axis Cause of death can be found in the case of multiple causes of death can be found in this CDC [publication](https://www.cdc.gov/nchs/data/dvs/Multiple-Cause-Record-Layout-2020.pdf)
.  Previously a subset of records classified to ICD-10 CHAPTER XV - Pregnancy, childbirth and the puerperium (O00-O99) were flagged by the presence of a '1' in the 5th position of the 2nd condition (position = 2).
These are instances where a decedent < 45 years of age has been classified as a maternal
death using input from the information entered in the [DecedentPregnancyStatus], and the 2nd condition represents the cause of death
to which the given record would be classified had the causes of death been processed without [National Vital Statistics Reports Volume 69, Number 2 January, 2020 (cdc.gov)](https://www.cdc.gov/nchs/data/nvsr/nvsr69/nvsr69-02-508.pdf).


In the FHIR encoding, in lieu of using the 5th position of the ICD10 code, a flag has been added to each Record Cause of Death condition that should be set to true in these cases, and should be absent or false elsewhere.
* insert RequireMetaProfile(Profile: RecordAxisCauseOfDeath)
",
}
puts ARGV[0]

xlsx = open_spreadsheet(ARGV[0])
xlsx.default_sheet = "Mortality"
filename = "generated/DeathRecordDataDictionary.md"
puts filename
fullout = File.open(filename, "w")
filename = "generated/MortalityRosterDataDictionary.md"
puts filename
roster = File.open(filename, "w")
fullout.puts "### Death Record Data Dictionary"
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

roster.puts "### Mortality Roster Data Dictionary"
roster.puts ""
roster.puts "| **#** |  **Description**   |  **Roster Name** |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set**  |"
roster.puts "| :---------: | --------------- | ------------ | ---------- | :------------: | ---------- | ---------- | -------------- |"
IJEField = 0
IJEBegin = 1
IJELength = 2
Description = 3
RosterName = 4
IJEName = 10
CodeStructureDescription = 5
Profile = 6
FHIRField = 7
FHIRType = 8
FHIREncoding = 9

profiles["MortalityRosterBundle"] = {
    :out => "StructureDefinition-vrdr-mortality-roster-bundle-intro.md",
    :desc =>"
   The mortality roster is used by jurisdictions to exchange death reports. <More information is needed here>.
   There are some discrepancies that between roster and IJE field names, that are noted in the table below.
   See the [MortalityRosterDataDictionary] for full content of the death register.",
}
out = nil
xlsx.default_sheet = "Mortality Roster"
profiles.each do |key, value|
  puts key
  if key == "MortalityRosterBundle"
    out = File.open("generated/" + value[:out], "w")
    out.puts "### Usage"
    out.puts value[:desc]
    out.puts ""
    out.puts "| **#** |  **Description**   |  **Roster Name** |  **IJE Name**  |  **Field**  |  **Type**  | **Value Set**  |"
    out.puts "| :---------: | --------------- | ------------ | ---------- |  ---------- | ---------- | -------------- |"
  end
  xlsx.each_row_streaming do |row|
    next if row[Profile] == nil || row[Profile].value != key
    field = description = ijename = rostername = profile = fhirfield = fhirtype = fhirencoding = ijeonly = ""
    field = row[IJEField].value.to_s if row[IJEField]
    ijename = row[IJEName].value.to_s if row[IJEName]
    rostername = row[RosterName].value.to_s if row[RosterName]
    profile = "[" + row[Profile].value.to_s + "]" if row[Profile]
    fhirfield = row[FHIRField].value.to_s if row[FHIRField]
    fhirtype = row[FHIRType].value.to_s if row[FHIRType]
    fhirencoding = row[FHIREncoding].value.to_s if row[FHIREncoding]
    description = row[Description].value.to_s if row[Description]
    roster.puts "| " + field.chomp + " | " + description.chomp + " | " + rostername + "|" + ijename + "| " + profile + "| " + ijeonly + "|" + fhirfield + " | " + fhirtype + " | " + fhirencoding + " | "
    if key == "MortalityRosterBundle"
      out.puts "| " + field.chomp + " | " + description.chomp + " | " + rostername + "|" + ijename + "| "  + fhirfield + " | " + fhirtype + " | " + fhirencoding + " | "
    end
    end
end
  out.puts "{: .grid }"
  out.puts "{% include markdown-link-references.md %}"
  out.close
  roster.puts "{: .grid }"
  roster.puts "{% include markdown-link-references.md %}"
  roster.close
