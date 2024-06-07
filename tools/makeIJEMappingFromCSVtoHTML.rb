# NOTE: Before running this script, you should download a local copy of the latest spreadsheets from https://github.com/nightingaleproject/vital_records_sheets using either method below:

#method 1 (Windows PC):
#Invoke-Webrequest https://github.com/nightingaleproject/vital_records_sheets/blob/main/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv?raw=true -Outfile "./input/mapping/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv"
#Invoke-Webrequest https://github.com/nightingaleproject/vital_records_sheets/blob/main/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv?raw=true -Outfile "./input/images/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv"

#method 2 (MAC):
# require 'open-uri'
# download1 = URI.open('https://github.com/nightingaleproject/vital_records_sheets/blob/main/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv?raw=true')
# IO.copy_stream(download1, 'input/mapping/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv')
# IO.copy_stream(download1, 'input/images/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv')

#run:
#ruby tools/makeIJEMappingFromCSVtoHTML.rb input/mapping/VRDR_Profile_Intros.csv input/mapping/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv 

#output files: after running script, generated files will be in the /generated/dataDictionaries folder. Copy or move generated files to /input/pagecontent in order for updated pages to be included in IG

require "json"
require "pry"
require "roo"
require "csv"
require 'set'

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

# IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.xlsx columns
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
IJE_UNIQUENESS_COL = 14

# VRDR_Profile_Intros.xlsx columns
INTRO_ORDER_COL = 0
INTRO_HEADING_COL = 1 
INTRO_PROFILE_NAME_COL = 2
INTRO_PROFILE_ID_COL = 3
INTRO_PROFILE_USAGE_COL = 4
INTRO_FORM_MAPPING_COL = 5
INTRO_IJE_MAPPING_COL = 6

vProfileIntrosSpreadsheet = ARGV[0]
vSpreadsheet = ARGV[1]

def printHeader(hHeading, pOutputFile, pIG)
    pOutputFile.puts hHeading
    # if hHeading == "### Natality (Live Birth) IJE Mapping" || hHeading == "### Fetal Death IJE Mapping"
    #     pOutputFile.puts "*IJE Names in <span style='color:darkviolet'>purple</span> text indicate element is unique to the Jurisdiction report, otherwise element is used for both Jurisdiction and Provider reports"
    if hHeading == "### Coded Content (Death Cause or Condition)"
        pOutputFile.puts ""
        pOutputFile.puts "*Coded content is used for compositions from NCHS to VRO, and is not included in Jurisdiction or Provider reports"
    elsif hHeading == "### Coded Content (Demographic)"
        pOutputFile.puts ""
        pOutputFile.puts "*Coded content is used for compositions from NCHS to VRO, and is not included in Jurisdiction or Provider reports"
    end
    pOutputFile.puts ""
    pOutputFile.puts "<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>"
    pOutputFile.puts "<tbody>"
    pOutputFile.puts "<tr>"
    pOutputFile.puts "<td style='background-color:#98c1d9; text-align: center; width: 4%;'><b>#</b></td>"
    pOutputFile.puts "<td style='background-color:#98c1d9; width: 16%;'><b>Description</b></td>"
    pOutputFile.puts "<td style='background-color:#98c1d9; text-align: center; width: 8%;'><b>IJE Name*</b></td>"
    pOutputFile.puts "<td style='background-color:#98c1d9; width: 27%;'><b>Profile</b></td>"
    pOutputFile.puts "<td style='background-color:#98c1d9;'><b>Field</b></td>"
    pOutputFile.puts "<td style='background-color:#98c1d9; text-align: center; width: 6%;'><b>Type</b></td>"
    pOutputFile.puts "<td style='background-color:#98c1d9; width: 14%;'><b>Value Set/Comments</b></td>"
    pOutputFile.puts "</tr>"
    return true
end 

def createMappingTable(pRowFilterIG, pRowFilter, pHeading, pOutputFile, pIntroSpreadsheet, pSpreadsheet)
    profiles = []
    profileName = ""
    #pIntroSpreadsheet.default_sheet = pRowFilterIG
    CSV.foreach(pIntroSpreadsheet) do |row|
        #next if row[INTRO_PROFILE_LOCATION_COL].value.to_s != pRowFilterIG
        profileName = row[INTRO_PROFILE_NAME_COL] if row[INTRO_PROFILE_NAME_COL] 
        profileHeading = row[INTRO_HEADING_COL] if row[INTRO_HEADING_COL]
        profiles.append([profileName, profileHeading])
    end
    pOutputFile.puts"<style>
    table.style1 { 
        border-collapse: collapse; 
        width: 100%; 
        table-layout: fixed;
    }  
    table.style1 tbody tr {
    border-bottom: 1px solid #dddddd;
    } 
    table.style1 tbody tr:nth-of-type(even) { 
        background-color: #f3f3f3; 
    } 
    table.style1 tbody tr:last-of-type {
    border-bottom: 2px solid #98c1d9;
    }
    </style>"
    printHeader(pHeading, pOutputFile, pRowFilterIG)

    codedDemoHeader = false
    codedCODHeader = false
    notImplementedHeader = false
    profiles.each do |(x, y)| 
        #pOutputFile.puts "<tbody>"
        CSV.foreach(pSpreadsheet) do |row|
            next if row[IJE_USECASE_COL] != pRowFilter || row[IJE_PROFILE_COL] != x #|| row[IJE_PROFILE_COL].value.to_s == "not implemented"
            if codedDemoHeader == false && y.to_s == "Coding-COD"
              pOutputFile.puts "</tbody>"
              pOutputFile.puts "</table>"
              codedDemoHeader = printHeader("### Coded Content (Death Cause or Condition)", pOutputFile, pRowFilterIG)
            end
            if codedCODHeader == false && y.to_s == "Coding-Demographic"
                pOutputFile.puts "</tbody>"
                pOutputFile.puts "</table>"
                codedCODHeader = printHeader("### Coded Content (Demographic)", pOutputFile, pRowFilterIG)
            end
            if notImplementedHeader == false && y.to_s == "Not Implemented"
                pOutputFile.puts "</tbody>"
                pOutputFile.puts "</table>"
                notImplementedHeader = printHeader("### Not Implemented Content", pOutputFile, pRowFilterIG)
            end
            
            field = description = ijename = profile = vProvOutputFilename = fhirfield = fhirtype = fhirencoding = fhirig = fhirunique = ""
            field = row[IJE_FIELD_COL] if row[IJE_FIELD_COL]
            ijename = row[IJE_NAME_COL] if row[IJE_NAME_COL]
            fhirig = row[IJE_FHIR_IG_COL] if row[IJE_FHIR_IG_COL]
            profile = "[" + row[IJE_PROFILE_COL] + "]" if row[IJE_PROFILE_COL] 
            fhirfield = row[IJE_FHIR_FIELD_COL] if row[IJE_FHIR_FIELD_COL]
            fhirtype = row[IJE_FHIR_TYPE_COL] if row[IJE_FHIR_TYPE_COL]
            fhirencoding = row[IJE_FHIR_COMMENTS_COL] if row[IJE_FHIR_COMMENTS_COL]   
            fhirunique = row[IJE_UNIQUENESS_COL] if row[IJE_UNIQUENESS_COL] 
            description = row[IJE_DESC_COL] if row[IJE_DESC_COL]
                pOutputFile.puts "<tr><td style='text-align: center;'>" + field.chomp + "</td><td>" + description.chomp + "</td><td style='text-align: center;'>" + ijename + "</td><td>" + profile + "</td><td>" + fhirfield + "</td><td>" + fhirtype + "</td><td>" + fhirencoding + "</td></tr>"
            # end
        end
        #pOutputFile.puts "</tbody>"
    end
    pOutputFile.puts "</tbody>"
    pOutputFile.puts "</table>"
    pOutputFile.close
end

#global substitute to create html links
def exchangeURLs(pOutputFile, aliases)
  content = File.read(pOutputFile)
  aliases.each{|key, value|
      content=content.gsub(key,value)}
  File.open(pOutputFile, 'w') { |file| file.write(content) }
end




#create VRDR death record data dictionary
vOutputFilename = "/generated/dataDictionaries/DeathRecordDataDictionary.md"
puts vOutputFilename
vOutputFile = File.open(Dir.pwd + vOutputFilename, "w")
vOutputFile.puts "The following table illustrates the mappings of fields in the Interjurisdictional Exchange (IJE) formats for birth to profiles and fields within this FHIR Implementation guide. This information is provided to guide implementers who are transitioning from the familiar IJE to the new FHIR format for this information."

vOutputFile.puts ""
createMappingTable("VRDR", "Mortality", "### Death Record IJE Mapping", vOutputFile, vProfileIntrosSpreadsheet, vSpreadsheet)




#create VRDR mortality data dictionary
vOutputFilename1 = "/generated/dataDictionaries/MortalityRosterDataDictionary.md"
puts vOutputFilename1
vOutputFile1 = File.open(Dir.pwd + vOutputFilename1, "w")
vOutputFile1.puts "The following table illustrates the mappings of fields in the Interjurisdictional Exchange (IJE) formats for fetal death to profiles and fields within this FHIR Implementation guide. This information is provided to guide implementers who are transitioning from the familiar IJE to the new FHIR format for this information."

vOutputFile1.puts ""
createMappingTable("VRDR", "Mortality Roster", "### Mortality Roster IJE Mapping", vOutputFile1, vProfileIntrosSpreadsheet, vSpreadsheet)

#create hash for mapping of links 
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

exchangeURLs(vOutputFile, aliases)
exchangeURLs(vOutputFile1, aliases)
