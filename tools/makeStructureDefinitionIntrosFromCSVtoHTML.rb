# NOTE: Before running this script, you should download a local copy of the latest spreadsheets from https://github.com/nightingaleproject/vital_records_sandbox_ig

#method 1:
#Invoke-Webrequest https://github.com/nightingaleproject/vital_records_sandbox_ig/blob/main/input/images/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv?raw=true -Outfile "./input/mapping/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv"
#Invoke-Webrequest https://github.com/nightingaleproject/vital_records_sandbox_ig/blob/main/input/mapping/BFDR_Forms_Mapping.csv?raw=true -Outfile "./input/mapping/BFDR_Forms_Mapping.csv"

#method 2:
# require 'open-uri'
# download1 = URI.open('https://github.com/nightingaleproject/vital_records_sandbox_ig/blob/main/input/images/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv?raw=true')
# IO.copy_stream(download1, 'input/images/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv')
# download2 = URI.open('https://github.com/nightingaleproject/vital_records_sandbox_ig/blob/main/input/mapping/BFDR_Forms_Mapping.csv?raw=true')
# IO.copy_stream(download2, 'input/mapping/BFDR_Forms_Mapping.csv')

#run:
#ruby tools/makeStructureDefinitionIntrosFromCSVtoHTML.rb input/mapping/VRDR_Profile_Intros.csv input/mapping/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv input/mapping/BFDR_Forms_Mapping.csv

require "json"
require "pry"
require "roo"
require "csv"

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

# IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv columns
IJE_USECASE_COL = 1
IJE_FIELD_COL = 2
IJE_BEGIN_COL = 3
IJE_LENGTH_COL = 4
IJE_DESC_COL = 5
IJE_NAME_COL = 6
IJE_CS_DESC_COL = 7
IJE_ONLY_COL = 8
IJE_FHIR_IG_COL = 9
IJE_PROFILE_COL = 10
IJE_FHIR_FIELD_COL = 11
IJE_FHIR_TYPE_COL = 12
IJE_FHIR_COMMENTS_COL = 13
#IJE_MAPPING_PROFILE_COL = 19 #NOT USED

# VRDR_Profile_Intros.csv columns
INTRO_ORDER_COL = 0
INTRO_HEADING_COL = 1 
INTRO_PROFILE_NAME_COL = 2
INTRO_PROFILE_ID_COL = 3
INTRO_PROFILE_USAGE_COL = 4
INTRO_FORM_MAPPING_COL = 5
INTRO_IJE_MAPPING_COL = 6
INTRO_PROFILE_LOCATION_COL = 7 #NOT USED

# BFDR_Forms_mapping.csv columns
FORMS_ORDER_COL = 0
FORMS_FORM_COL = 1
FORMS_URL_COL = 2
FORMS_ELEMENT_COL = 3
FORMS_IG_COL = 4
# added this column to get the forms mappings printing out on the related profile page - e.g. if something is mapped to a us core profile, set this to the 
# profile containing the us core profile (e.g. Encounter-maternity contains US Core Location). Similarly if something is mapped to a fhir extension
FORMS_MAPPING_PROFILE_COL = 5
FORMS_PROFILE_COL = 6
FORMS_FIELD_COL = 7
FORMS_CONTEXT_COL = 8


# ARGV[0] input/mapping/VRDR_Profile_Intros.csv
vProfileIntrosSpreadsheet = ARGV[0]
#vProfileIntrosSpreadsheet = open_spreadsheet(ARGV[0])
#vProfileIntrosSpreadsheet.default_sheet = "BFDR"

# ARGV[1] input/mapping/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.xlsx 
vSpreadsheet = ARGV[1]
#vSpreadsheet = open_spreadsheet(ARGV[1])
#vSpreadsheet.default_sheet = "IJE_File_Layouts_Version_2021_F"

# ARGV[2] input/mapping/BFDR_Forms_Mapping.csv
vFormsMappingSpreadsheet = ARGV[2]
#vFormsMappingSpreadsheet = open_spreadsheet(ARGV[2])
#vFormsMappingSpreadsheet.default_sheet = "BFDR Form Items"

#create hash for mapping of links 
def gen_aliases
  aliases={}
  File.foreach(Dir.pwd + "/input/includes/markdown-link-references.md", chomp: true) do |line|
      parts = line.split(':',2)
      url =parts[1][1..] if !parts[1].nil?
      link = parts[0][1..-2]
      s = "<a href='#{url}'>#{link}</a>"   
      aliases[parts[0]]=s
  end
  File.foreach(Dir.pwd + "/fsh-generated/includes/fsh-link-references.md", chomp: true) do |line|
      parts = line.split(':',2)
      url =parts[1][1..] if !parts[1].nil?
      link = parts[0][1..-2]
      s = "<a href='#{url}'>#{link}</a>"   
      aliases[parts[0]]=s
  end
  aliases
end
alias_links = gen_aliases

def exchangeURLs(comment, aliases)
  aliases.each{|key, value|
    comment = comment.gsub(key,value)}
  comment
end

def createSDIntros(pIG, pProfileIntrosSpreadsheet, pIJEMappingSpreadsheet, pFormsMappingSpreadsheet, alias_links)
  #pProfileIntrosSpreadsheet.default_sheet = pIG
  # stream the BFDR_Profile_Intros.xlsx spreadsheet - this also contains any usage text for the start of the intro.md file (one file for each profile)
  # some of the profiles don't have any usage or ije mappings (currently the Bundle for example, skip those rows)
  CSV.foreach(pProfileIntrosSpreadsheet, headers: true) do |row|
    # if there is no usage, no forms mapping, and no ije mapping, skip this row, we don't need to create an into file for this profile
    # There's some weirdness with the Roo gem and empty and nil fields - hence double to_s and check for empty hack
    next if (row[INTRO_PROFILE_USAGE_COL].to_s.to_s.empty? && row[INTRO_FORM_MAPPING_COL].to_s.to_s.empty? && row[INTRO_IJE_MAPPING_COL].to_s.to_s.empty?)
    next if (row[INTRO_PROFILE_LOCATION_COL].to_s != pIG )
    
    vProfileName = vProfileIntro = vGeneratedFileName = ""
    vProfileName = row[INTRO_PROFILE_NAME_COL].to_s
    vProfileNameHyphen = row[INTRO_PROFILE_ID_COL].to_s
    vGeneratedFileName = "generated/" + pIG.to_s + "/StructureDefinition-" + vProfileNameHyphen.to_s + "-intro.md"
    vIntroOutputFile = File.open(vGeneratedFileName, "w")

    # if there is usage text put it into the intro file for the profile
    if !row[INTRO_PROFILE_USAGE_COL].to_s.to_s.empty?
      vIntroOutputFile.puts exchangeURLs(row[INTRO_PROFILE_USAGE_COL].to_s, alias_links)
    end


    # if there are IJE mappings put them into the intro file for the profile
    if !row[INTRO_IJE_MAPPING_COL].to_s.to_s.empty?
      vIntroOutputFile.puts "" if !row[INTRO_FORM_MAPPING_COL].to_s.to_s.empty?
      vIntroOutputFile.puts "### IJE Mapping"
      vIntroOutputFile.puts ""
      vIntroOutputFile.puts "<style>"
      vIntroOutputFile.puts " .context-menu {cursor: context-menu; color: #438bca;}"
      vIntroOutputFile.puts " .context-menu:hover {opacity: 0.5;}"
      vIntroOutputFile.puts "</style>"
      firstTable = true
      # if filtering race or ethnicity further break down tables by mother/father
      if vProfileName == "ObservationCodedRaceAndEthnicityVitalRecords" || vProfileName == "ObservationInputRaceAndEthnicityVitalRecords"
        # process any natality mother rows firstEntry
        firstEntry = true
        CSV.foreach(pIJEMappingSpreadsheet) do |row|
          next if (row[IJE_USECASE_COL].to_s != "Natality" || row[IJE_PROFILE_COL].to_s != vProfileName || row[IJE_NAME_COL].to_s[0] != "M")
          if firstEntry
            firstTable = false
            vIntroOutputFile.puts "<details open>"
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "<summary>"
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "<strong class='context-menu' > Natality (Mother)</strong>"
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "</summary>"
            vIntroOutputFile.puts "<table class='grid'>"
            vIntroOutputFile.puts "<thead>"
            vIntroOutputFile.puts "  <tr>"
            vIntroOutputFile.puts "    <th style='text-align: center'><strong>Use Case</strong></th>"
            vIntroOutputFile.puts "    <th><strong>#</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Description</strong></th>"
            vIntroOutputFile.puts "    <th><strong>IJE Name</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Field</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Type</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Value Set/Comments</strong></th>"
            vIntroOutputFile.puts "  </tr>"
            vIntroOutputFile.puts "</thead>"
            vIntroOutputFile.puts "<tbody>"
            firstEntry = false
          end
          vIntroOutputFile.puts "<tr>"
          vIntroOutputFile.puts "  <td style='text-align: center'>" + row[IJE_USECASE_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_FIELD_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_DESC_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_NAME_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_FHIR_FIELD_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_FHIR_TYPE_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + exchangeURLs(row[IJE_FHIR_COMMENTS_COL].to_s, alias_links) + "</td>"
          vIntroOutputFile.puts "</tr>"
          # vIntroOutputFile.puts "| " + row[IJE_USECASE_COL].to_s + " | " + row[IJE_FIELD_COL].to_s + " | " + row[IJE_DESC_COL].to_s + " | " + row[IJE_NAME_COL].to_s + " | " + row[IJE_FHIR_FIELD_COL].to_s + " |" + row[IJE_FHIR_TYPE_COL].to_s + " |" + row[IJE_FHIR_ENCODING_COL].to_s + " |" 
        end
        unless firstEntry
          vIntroOutputFile.puts ""
          vIntroOutputFile.puts "</tbody>"
          vIntroOutputFile.puts "</table>"
          vIntroOutputFile.puts ""
          vIntroOutputFile.puts "</details>"
          vIntroOutputFile.puts "<p></p>"
          vIntroOutputFile.puts ""
        end

        # process any natality father rows firstEntry
        firstEntry = true
        CSV.foreach(pIJEMappingSpreadsheet) do |row|
          next if (row[IJE_USECASE_COL].to_s != "Natality" || row[IJE_PROFILE_COL].to_s != vProfileName || row[IJE_NAME_COL].to_s[0] != "F")
          if firstEntry
            if firstTable
              vIntroOutputFile.puts "<details open>"
              firstTable = false
            else
              vIntroOutputFile.puts "<details>"
            end
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "<summary>"
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "<strong class='context-menu' > Natality (Father)</strong>"
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "</summary>"
            vIntroOutputFile.puts "<table class='grid'>"
            vIntroOutputFile.puts "<thead>"
            vIntroOutputFile.puts "  <tr>"
            vIntroOutputFile.puts "    <th style='text-align: center'><strong>Use Case</strong></th>"
            vIntroOutputFile.puts "    <th><strong>#</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Description</strong></th>"
            vIntroOutputFile.puts "    <th><strong>IJE Name</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Field</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Type</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Value Set/Comments</strong></th>"
            vIntroOutputFile.puts "  </tr>"
            vIntroOutputFile.puts "</thead>"
            vIntroOutputFile.puts "<tbody>"
            firstEntry = false
          end
          vIntroOutputFile.puts "<tr>"
          vIntroOutputFile.puts "  <td style='text-align: center'>" + row[IJE_USECASE_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_FIELD_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_DESC_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_NAME_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_FHIR_FIELD_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_FHIR_TYPE_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + exchangeURLs(row[IJE_FHIR_COMMENTS_COL].to_s, alias_links) + "</td>"
          vIntroOutputFile.puts "</tr>"
          # vIntroOutputFile.puts "| " + row[IJE_USECASE_COL].to_s + " | " + row[IJE_FIELD_COL].to_s + " | " + row[IJE_DESC_COL].to_s + " | " + row[IJE_NAME_COL].to_s + " | " + row[IJE_FHIR_FIELD_COL].to_s + " |" + row[IJE_FHIR_TYPE_COL].to_s + " |" + row[IJE_FHIR_ENCODING_COL].to_s + " |" 
        end
        unless firstEntry
          vIntroOutputFile.puts ""
          vIntroOutputFile.puts "</tbody>"
          vIntroOutputFile.puts "</table>"
          vIntroOutputFile.puts ""
          vIntroOutputFile.puts "</details>"
          vIntroOutputFile.puts "<p></p>"
          vIntroOutputFile.puts ""
        end

        # now process any fetal death Mother rows
        firstEntry = true
        CSV.foreach(pIJEMappingSpreadsheet) do |row|
          next if (row[IJE_USECASE_COL].to_s != "Fetal Death" || row[IJE_PROFILE_COL].to_s != vProfileName || row[IJE_NAME_COL].to_s[0] != "M")
          if firstEntry
            if firstTable
              vIntroOutputFile.puts "<details open>"
              firstTable = false
            else
              vIntroOutputFile.puts "<details>"
            end
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "<summary>"
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "<strong class='context-menu'> Fetal Death (Mother)</strong>"
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "</summary>"
            vIntroOutputFile.puts "<table class='grid'>"
            vIntroOutputFile.puts "<thead>"
            vIntroOutputFile.puts "  <tr>"
            vIntroOutputFile.puts "    <th style='text-align: center'><strong>Use Case</strong></th>"
            vIntroOutputFile.puts "    <th><strong>#</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Description</strong></th>"
            vIntroOutputFile.puts "    <th><strong>IJE Name</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Field</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Type</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Value Set/Comments</strong></th>"
            vIntroOutputFile.puts "  </tr>"
            vIntroOutputFile.puts "</thead>"
            vIntroOutputFile.puts "<tbody>"
            firstEntry = false
          end
          vIntroOutputFile.puts "<tr>"
          vIntroOutputFile.puts "  <td style='text-align: center'>" + row[IJE_USECASE_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_FIELD_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_DESC_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_NAME_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_FHIR_FIELD_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_FHIR_TYPE_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + exchangeURLs(row[IJE_FHIR_COMMENTS_COL].to_s, alias_links) + "</td>"
          vIntroOutputFile.puts "</tr>"
        end
        unless firstEntry
          vIntroOutputFile.puts ""
          vIntroOutputFile.puts "</tbody>"
          vIntroOutputFile.puts "</table>"
          vIntroOutputFile.puts ""
          vIntroOutputFile.puts "</details>"
          vIntroOutputFile.puts "<p></p>"
          vIntroOutputFile.puts ""
        end

        # now process any fetal death Father rows
        firstEntry = true
        CSV.foreach(pIJEMappingSpreadsheet) do |row|
          next if (row[IJE_USECASE_COL].to_s != "Fetal Death" || row[IJE_PROFILE_COL].to_s != vProfileName || row[IJE_NAME_COL].to_s[0] != "F")
          if firstEntry
            if firstTable
              vIntroOutputFile.puts "<details open>"
              firstTable = false
            else
              vIntroOutputFile.puts "<details>"
            end
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "<summary>"
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "<strong class='context-menu'> Fetal Death (Father)</strong>"
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "</summary>"
            vIntroOutputFile.puts "<table class='grid'>"
            vIntroOutputFile.puts "<thead>"
            vIntroOutputFile.puts "  <tr>"
            vIntroOutputFile.puts "    <th style='text-align: center'><strong>Use Case</strong></th>"
            vIntroOutputFile.puts "    <th><strong>#</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Description</strong></th>"
            vIntroOutputFile.puts "    <th><strong>IJE Name</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Field</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Type</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Value Set/Comments</strong></th>"
            vIntroOutputFile.puts "  </tr>"
            vIntroOutputFile.puts "</thead>"
            vIntroOutputFile.puts "<tbody>"
            firstEntry = false
          end
          vIntroOutputFile.puts "<tr>"
          vIntroOutputFile.puts "  <td style='text-align: center'>" + row[IJE_USECASE_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_FIELD_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_DESC_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_NAME_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_FHIR_FIELD_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_FHIR_TYPE_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + exchangeURLs(row[IJE_FHIR_COMMENTS_COL].to_s, alias_links) + "</td>"
          vIntroOutputFile.puts "</tr>"
        end
        unless firstEntry
          vIntroOutputFile.puts ""
          vIntroOutputFile.puts "</tbody>"
          vIntroOutputFile.puts "</table>"
          vIntroOutputFile.puts ""
          vIntroOutputFile.puts "</details>"
          vIntroOutputFile.puts "<p></p>"
          vIntroOutputFile.puts ""
        end
      else
        # process any natality rows firstEntry
        firstEntry = true
        CSV.foreach(pIJEMappingSpreadsheet) do |row|
          if (row[IJE_PROFILE_COL].to_s == "ConditionInfectionPresentDuringPregnancy" && vProfileName == "ObservationNoneOfSpecifiedInfectionsPresentDuringPregnancy") \
            || (row[IJE_PROFILE_COL].to_s == "ProcedureObstetric" && vProfileName == "ObservationNoneOfSpecifiedObstetricProcedures")
            next if (row[IJE_USECASE_COL].to_s != "Natality")
          else
            next if (row[IJE_USECASE_COL].to_s != "Natality" || row[IJE_PROFILE_COL].to_s != vProfileName)
          end
          if firstEntry
            if firstTable
              vIntroOutputFile.puts "<details open>"
              firstTable = false
            else
              vIntroOutputFile.puts "<details>"
            end
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "<summary>"
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "<strong class='context-menu' > Natality </strong>"
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "</summary>"
            vIntroOutputFile.puts "<table class='grid'>"
            vIntroOutputFile.puts "<thead>"
            vIntroOutputFile.puts "  <tr>"
            vIntroOutputFile.puts "    <th style='text-align: center'><strong>Use Case</strong></th>"
            vIntroOutputFile.puts "    <th><strong>#</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Description</strong></th>"
            vIntroOutputFile.puts "    <th><strong>IJE Name</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Field</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Type</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Value Set/Comments</strong></th>"
            vIntroOutputFile.puts "  </tr>"
            vIntroOutputFile.puts "</thead>"
            vIntroOutputFile.puts "<tbody>"
            firstEntry = false
          end
          vIntroOutputFile.puts "<tr>"
          vIntroOutputFile.puts "  <td style='text-align: center'>" + row[IJE_USECASE_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_FIELD_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_DESC_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_NAME_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_FHIR_FIELD_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_FHIR_TYPE_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + exchangeURLs(row[IJE_FHIR_COMMENTS_COL].to_s, alias_links) + "</td>"
          vIntroOutputFile.puts "</tr>"
        end
        unless firstEntry
          vIntroOutputFile.puts ""
          vIntroOutputFile.puts "</tbody>"
          vIntroOutputFile.puts "</table>"
          vIntroOutputFile.puts ""
          vIntroOutputFile.puts "</details>"
          vIntroOutputFile.puts "<p></p>"
          vIntroOutputFile.puts ""
        end

        # now process any fetal death rows
        firstEntry = true
        CSV.foreach(pIJEMappingSpreadsheet) do |row|
          if (row[IJE_PROFILE_COL].to_s == "ConditionInfectionPresentDuringPregnancy" && vProfileName == "ObservationNoneOfSpecifiedInfectionsPresentDuringPregnancy") \
            || (row[IJE_PROFILE_COL].to_s == "ProcedureObstetric" && vProfileName == "ObservationNoneOfSpecifiedObstetricProcedures")
            next if (row[IJE_USECASE_COL].to_s != "Fetal Death")
          else
            next if (row[IJE_USECASE_COL].to_s != "Fetal Death" || row[IJE_PROFILE_COL].to_s != vProfileName)
          end
          # next if (row[IJE_USECASE_COL].to_s != "Fetal Death" || row[IJE_PROFILE_COL].to_s != vProfileName)
          if firstEntry
            if firstTable
              vIntroOutputFile.puts "<details open>"
              firstTable = false
            else
              vIntroOutputFile.puts "<details>"
            end
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "<summary>"
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "<strong class='context-menu'> Fetal Death </strong>"
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "</summary>"
            vIntroOutputFile.puts "<table class='grid'>"
            vIntroOutputFile.puts "<thead>"
            vIntroOutputFile.puts "  <tr>"
            vIntroOutputFile.puts "    <th style='text-align: center'><strong>Use Case</strong></th>"
            vIntroOutputFile.puts "    <th><strong>#</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Description</strong></th>"
            vIntroOutputFile.puts "    <th><strong>IJE Name</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Field</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Type</strong></th>"
            vIntroOutputFile.puts "    <th><strong>Value Set/Comments</strong></th>"
            vIntroOutputFile.puts "  </tr>"
            vIntroOutputFile.puts "</thead>"
            vIntroOutputFile.puts "<tbody>"
            firstEntry = false
          end
          vIntroOutputFile.puts "<tr>"
          vIntroOutputFile.puts "  <td style='text-align: center'>" + row[IJE_USECASE_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_FIELD_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_DESC_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_NAME_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_FHIR_FIELD_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + row[IJE_FHIR_TYPE_COL].to_s + "</td>"
          vIntroOutputFile.puts "  <td>" + exchangeURLs(row[IJE_FHIR_COMMENTS_COL].to_s, alias_links) + "</td>"
          vIntroOutputFile.puts "</tr>"
        end
        unless firstEntry
          vIntroOutputFile.puts ""
          vIntroOutputFile.puts "</tbody>"
          vIntroOutputFile.puts "</table>"
          vIntroOutputFile.puts ""
          vIntroOutputFile.puts "</details>"
          vIntroOutputFile.puts "<p></p>"
          vIntroOutputFile.puts ""
        end
      end

      # now process any death record/mortality rows
      firstEntry = true
      CSV.foreach(pIJEMappingSpreadsheet) do |row|
        next if (row[IJE_USECASE_COL].to_s != "Mortality" || row[IJE_PROFILE_COL].to_s != vProfileName)
        if firstEntry
          if firstTable
            vIntroOutputFile.puts "<details open>"
            firstTable = false
          else
            vIntroOutputFile.puts "<details>"
          end
          vIntroOutputFile.puts ""
          vIntroOutputFile.puts "<summary>"
          vIntroOutputFile.puts ""
          vIntroOutputFile.puts "<strong class='context-menu'> Mortality (Decedent) </strong>"
          vIntroOutputFile.puts ""
          vIntroOutputFile.puts "</summary>"
          vIntroOutputFile.puts "<table class='grid'>"
          vIntroOutputFile.puts "<thead>"
          vIntroOutputFile.puts "  <tr>"
          vIntroOutputFile.puts "    <th style='text-align: center'><strong>Use Case</strong></th>"
          vIntroOutputFile.puts "    <th><strong>#</strong></th>"
          vIntroOutputFile.puts "    <th><strong>Description</strong></th>"
          vIntroOutputFile.puts "    <th><strong>IJE Name</strong></th>"
          vIntroOutputFile.puts "    <th><strong>Field</strong></th>"
          vIntroOutputFile.puts "    <th><strong>Type</strong></th>"
          vIntroOutputFile.puts "    <th><strong>Value Set/Comments</strong></th>"
          vIntroOutputFile.puts "  </tr>"
          vIntroOutputFile.puts "</thead>"
          vIntroOutputFile.puts "<tbody>"
          firstEntry = false
        end
        vIntroOutputFile.puts "<tr>"
        vIntroOutputFile.puts "  <td style='text-align: center'>" + row[IJE_USECASE_COL].to_s + "</td>"
        vIntroOutputFile.puts "  <td>" + row[IJE_FIELD_COL].to_s + "</td>"
        vIntroOutputFile.puts "  <td>" + row[IJE_DESC_COL].to_s + "</td>"
        vIntroOutputFile.puts "  <td>" + row[IJE_NAME_COL].to_s + "</td>"
        vIntroOutputFile.puts "  <td>" + row[IJE_FHIR_FIELD_COL].to_s + "</td>"
        vIntroOutputFile.puts "  <td>" + row[IJE_FHIR_TYPE_COL].to_s + "</td>"
        vIntroOutputFile.puts "  <td>" + exchangeURLs(row[IJE_FHIR_COMMENTS_COL].to_s, alias_links) + "</td>"
        vIntroOutputFile.puts "</tr>"
      end
      unless firstEntry
        vIntroOutputFile.puts ""
        vIntroOutputFile.puts "</tbody>"
        vIntroOutputFile.puts "</table>"
        vIntroOutputFile.puts ""
        vIntroOutputFile.puts "</details>"
        vIntroOutputFile.puts "<p></p>"
        vIntroOutputFile.puts ""
      end

      # now process any mortality roster rows
      firstEntry = true
      CSV.foreach(pIJEMappingSpreadsheet) do |row|
        if (row[IJE_PROFILE_COL].to_s == "ConditionInfectionPresentDuringPregnancy" && vProfileName == "ObservationNoneOfSpecifiedInfectionsPresentDuringPregnancy") \
          || (row[IJE_PROFILE_COL].to_s == "ProcedureObstetric" && vProfileName == "ObservationNoneOfSpecifiedObstetricProcedures")
          next if (row[IJE_USECASE_COL].to_s != "Mortality Roster")
        else
          next if (row[IJE_USECASE_COL].to_s != "Mortality Roster" || row[IJE_PROFILE_COL].to_s != vProfileName)
        end
        if firstEntry
          if firstTable
            vIntroOutputFile.puts "<details open>"
            firstTable = false
          else
            vIntroOutputFile.puts "<details>"
          end
          vIntroOutputFile.puts ""
          vIntroOutputFile.puts "<summary>"
          vIntroOutputFile.puts ""
          vIntroOutputFile.puts "<strong class='context-menu'> Mortality Roster </strong>"
          vIntroOutputFile.puts ""
          vIntroOutputFile.puts "</summary>"
          vIntroOutputFile.puts "<table class='grid'>"
          vIntroOutputFile.puts "<thead>"
          vIntroOutputFile.puts "  <tr>"
          vIntroOutputFile.puts "    <th style='text-align: center'><strong>Use Case</strong></th>"
          vIntroOutputFile.puts "    <th><strong>#</strong></th>"
          vIntroOutputFile.puts "    <th><strong>Description</strong></th>"
          vIntroOutputFile.puts "    <th><strong>IJE Name</strong></th>"
          vIntroOutputFile.puts "    <th><strong>Field</strong></th>"
          vIntroOutputFile.puts "    <th><strong>Type</strong></th>"
          vIntroOutputFile.puts "    <th><strong>Value Set/Comments</strong></th>"
          vIntroOutputFile.puts "  </tr>"
          vIntroOutputFile.puts "</thead>"
          vIntroOutputFile.puts "<tbody>"
          firstEntry = false
        end
        vIntroOutputFile.puts "<tr>"
        vIntroOutputFile.puts "  <td style='text-align: center'>" + row[IJE_USECASE_COL].to_s + "</td>"
        vIntroOutputFile.puts "  <td>" + row[IJE_FIELD_COL].to_s + "</td>"
        vIntroOutputFile.puts "  <td>" + row[IJE_DESC_COL].to_s + "</td>"
        vIntroOutputFile.puts "  <td>" + row[IJE_NAME_COL].to_s + "</td>"
        vIntroOutputFile.puts "  <td>" + row[IJE_FHIR_FIELD_COL].to_s + "</td>"
        vIntroOutputFile.puts "  <td>" + row[IJE_FHIR_TYPE_COL].to_s + "</td>"
        vIntroOutputFile.puts "  <td>" + exchangeURLs(row[IJE_FHIR_COMMENTS_COL].to_s, alias_links) + "</td>"
        vIntroOutputFile.puts "</tr>"
      end     
      unless firstEntry
        vIntroOutputFile.puts ""
        vIntroOutputFile.puts "</tbody>"
        vIntroOutputFile.puts "</table>"
        vIntroOutputFile.puts ""
        vIntroOutputFile.puts "</details>"
        vIntroOutputFile.puts "<p></p>"
        vIntroOutputFile.puts ""
        firstEntry = true
      end
    end

    # if there are form mappings put them into the intro file for the profile
    if !row[INTRO_FORM_MAPPING_COL].to_s.to_s.empty?
      vIntroOutputFile.puts "" if !row[INTRO_PROFILE_USAGE_COL].to_s.to_s.empty?
      vIntroOutputFile.puts "### Form Mapping"
      vIntroOutputFile.puts "<details>"
      vIntroOutputFile.puts ""
      vIntroOutputFile.puts "<summary>"
      vIntroOutputFile.puts ""
      vIntroOutputFile.puts "<strong class='context-menu' >Form Mapping</strong>"
      vIntroOutputFile.puts ""
      if firstTable
        vIntroOutputFile.puts "<style>"
        vIntroOutputFile.puts " .context-menu {cursor: context-menu; color: #438bca;}"
        vIntroOutputFile.puts " .context-menu:hover {opacity: 0.5;}"
        vIntroOutputFile.puts "</style>"
      end
      vIntroOutputFile.puts "</summary>"
      vIntroOutputFile.puts "<table class='grid'>"
      vIntroOutputFile.puts "<thead>"
      vIntroOutputFile.puts "  <tr>"
      vIntroOutputFile.puts "    <th style='text-align: center'><strong>Item #</strong></th>"
      vIntroOutputFile.puts "    <th><strong>Form Field</strong></th>"
      vIntroOutputFile.puts "    <th><strong>FHIR Profile Field</strong></th>"
      vIntroOutputFile.puts "    <th><strong>Reference</strong></th>"
      vIntroOutputFile.puts "  </tr>"
      vIntroOutputFile.puts "</thead>"
      vIntroOutputFile.puts "<tbody>"

      CSV.foreach(pFormsMappingSpreadsheet) do |row|
        next if row[FORMS_MAPPING_PROFILE_COL].to_s != vProfileNameHyphen
        formsElement = row[FORMS_ELEMENT_COL].to_s
        if formsElement.include? "."
          formsElements = formsElement.strip.split(" ", 2)
          itemNum = formsElements[0]
          itemName = formsElements[1]
        else
          itemNum = "-"
          itemName = formsElement
        end
        formName = row[FORMS_FORM_COL].to_s.partition('Standard').last
        if row[FORMS_FIELD_COL].to_s.strip.empty?
          fhirField = "-"
        else
          fhirField = row[FORMS_FIELD_COL].to_s
        end
        vIntroOutputFile.puts "<tr>"
        vIntroOutputFile.puts "  <td style='text-align: center'>" + itemNum.chomp(".") + "</td>"
        vIntroOutputFile.puts "  <td>" + itemName + "</td>"
        vIntroOutputFile.puts "  <td>" + fhirField + "</td>"
        vIntroOutputFile.puts "  <td>" + "<a href='#{row[FORMS_URL_COL].to_s}'>#{formName}</a>" + "</td>"
        vIntroOutputFile.puts "</tr>"
      end
      vIntroOutputFile.puts "</tbody>"
      vIntroOutputFile.puts "</table>"
    end
  end
end


createSDIntros("VRDR", vProfileIntrosSpreadsheet, vSpreadsheet, vFormsMappingSpreadsheet, alias_links)

