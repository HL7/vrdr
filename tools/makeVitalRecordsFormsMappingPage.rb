# ruby tools/makeVitalRecordsFormsMappingPage.rb input/mapping/BFDR_Forms_Mapping.csv
# output file: generated/vrdr/vrdr_forms_mapping.md

require "json"
require 'open-uri'
require "pry"
require "roo"
require "csv"

# download2 = URI.open('https://github.com/nightingaleproject/vital_records_sandbox_ig/blob/main/input/mapping/BFDR_Forms_Mapping.csv?raw=true')
# IO.copy_stream(download2, 'input/mapping/BFDR_Forms_Mapping.csv')

def get_file_type(file)
  File.extname(file).gsub(".", "")
end

# def open_spreadsheet(file)
#   extension = get_file_type(file)
#   if ["csv", "xls", "xlsx"].include? extension
#     Roo::Spreadsheet.open(file, extension: extension)
#   else
#     raise "Unknown file type: #{file}"
#   end
# end

# BFDR_Forms_mapping.csv columns
FORMS_ORDER_COL = 0
FORMS_FORM_COL = 1
FORMS_URL_COL = 2
FORMS_ELEMENT_COL = 3
FORMS_IG_COL = 4
FORMS_MAPPING_PROFILE_COL = 5
FORMS_PROFILE_COL = 6
FORMS_FIELD_COL = 7
FORMS_CONTEXT_COL = 8
FORMS_QAIRE_COL = 9
FORMS_QAIRE_FIELD_COL = 10
FORMS_MAPPING_IG_COL = 12
FORMS_COMP_NAME_COL = 13

puts ARGV[0]
vSpreadsheet = ARGV[0]
# vSpreadsheet = open_spreadsheet(ARGV[0])
# vSpreadsheet.default_sheet = "BFDR Form Items"

vOutputFilename = "generated/VRDR/vrdr_forms_mapping.md"
puts vOutputFilename
vOutputFile = File.open(vOutputFilename, "w")

vOutputFile.puts"<style>
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

vOutputFile.puts "This page provides the mapping from standard forms and worksheets used to exchange death information to the FHIR resources as defined in this IG.

This IG supports communicating information from an EHR system to the jurisdictional vital records offices and to NCHS for standard reporting forms:
 * [U.S. Standard Certificate Of Death](https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf) ([see table](vrdr_forms_mapping.html#us-standard-certificate-of-death-mapping))

Information on updates to the death forms can be found at NVSS [Revisions of the U.S. Standard Certificates and Reports](https://www.cdc.gov/nchs/nvss/revisions-of-the-us-standard-certificates-and-reports.htm)"

vOutputFile.puts ""

def createMappingTable(pRowFilter, pRowFilterLink, pOutputFile, pSpreadsheet)

    igMap = Hash.new
    # can change this to reference older BFDR version
    #igMap["BFDR"] = "{{site.data.fhir.ver.hl7fhirusbfdr}}"
    igMap["VRDR"] = ""
    igMap["VRCPL"] = "{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/"
    igMap["US CORE"] = "{{site.data.fhir.ver.hl7fhiruscore}}/"
    igMap["FHIR"] = "http://hl7.org/fhir/extensions/"
    igMap["ODH"] = "{{site.data.fhir.ver.hl7fhirusodh}}"
    
    pOutputFile.puts "### " + "<a href='#{pRowFilterLink}'>#{pRowFilter} Mapping</a>" 
    pOutputFile.puts ""
    pOutputFile.puts "<table  align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>"
    pOutputFile.puts "<thead>"
    pOutputFile.puts "  <tr>"
    pOutputFile.puts "    <td style='background-color:#98c1d9; text-align: center; width: 5%;'><b>Item #</b></td>"
    pOutputFile.puts "    <td style='background-color:#98c1d9; width: 25%;'><b>Form Element</b></td>"
    pOutputFile.puts "    <td style='background-color:#98c1d9; width: 25%;'><b>FHIR Profile</b></td>"
    pOutputFile.puts "    <td style='background-color:#98c1d9; width: 20%;'><b>FHIR Field</b></td>"
    pOutputFile.puts "  </tr>"
    pOutputFile.puts "</thead>"
    pOutputFile.puts "<tbody>"
    
    CSV.foreach(pSpreadsheet) do |row|
      next if row[FORMS_FORM_COL].to_s != pRowFilter || row[FORMS_PROFILE_COL].to_s == "not implemented"

      vElement = vProfile =vField = vContext = vIG = vExtension = vMappingIG = ""

      formsElement = row[FORMS_ELEMENT_COL].to_s
      if formsElement.include? ". "
        formsElements = formsElement.strip.split(" ", 2)
        vItemNum = formsElements[0].chomp(".")
        vItemName = formsElements[1]
      else
        vItemNum = "-"
        vItemName = formsElement
      end

      vIg = row[FORMS_IG_COL].to_s if row[FORMS_IG_COL]
      vMappingIg = row[FORMS_MAPPING_IG_COL].to_s if row[FORMS_MAPPING_IG_COL]
      vProfile = row[FORMS_MAPPING_PROFILE_COL].to_s if row[FORMS_MAPPING_PROFILE_COL]
      vProfileName = row[FORMS_COMP_NAME_COL].to_s if row[FORMS_COMP_NAME_COL]
      
      # There's some weirdness with the Roo gem and empty and nil fields - hence double to_s and check for empty hack
      vContext = row[FORMS_CONTEXT_COL].to_s if !row[FORMS_CONTEXT_COL].to_s.to_s.empty?
      vField = row[FORMS_FIELD_COL].to_s.empty? ? row[FORMS_CONTEXT_COL].to_s.to_s.partition('.').last : row[FORMS_FIELD_COL].to_s

      hasContext = !row[FORMS_CONTEXT_COL].nil?
      # if there is a "context" filled in for the sheet,
      # make sure that the proper IG is used (mapping IG)
      if hasContext && row[FORMS_FIELD_COL].nil?
        vFieldProfile = row[FORMS_PROFILE_COL].to_s if row[FORMS_PROFILE_COL]
        if vFieldProfile.nil?
          puts "- Profile column is empty - "
        end
        vField = "<a href='#{igMap[vIg]}" + "StructureDefinition-" + "#{vFieldProfile}" + ".html'>#{vField}</a>"  
        
        # vField = "[" + vField + "]" + "("+ igMap[vIg] + "StructureDefinition-" + vFieldProfile + ".html)"
        if vMappingIg.nil?
          puts "- Mapping IG column is empty for profile - "
          puts vContext
        end
        vProfileWithURL = "<a href='#{igMap[vMappingIg]}" + "StructureDefinition-" + "#{vProfile}" + ".html'>#{vProfileName}</a>"  
        # vProfileWithURL = "[" + vProfile + "]" + "("+ igMap[vMappingIg] + "StructureDefinition-" + vProfile + ".html)"
      elsif hasContext
        vProfileWithURL = "<a href='#{igMap[vMappingIg]}" + "StructureDefinition-" + "#{vProfile}" + ".html'>#{vProfileName}</a>"  
        vFieldProfile = row[FORMS_PROFILE_COL].to_s if row[FORMS_PROFILE_COL]
        puts vFieldProfile
        vField = "<a href='#{igMap[vIg]}" + "StructureDefinition-" + "#{vFieldProfile}" + ".html'>#{vField}</a>"  
        puts vField
        # vProfileWithURL = "[" + vProfile + "]" + "("+ igMap[vMappingIg] + "StructureDefinition-" + vProfile + ".html)"
      else
        vProfileWithURL = "<a href='#{igMap[vIg]}" + "StructureDefinition-" + "#{vProfile}" + ".html'>#{vProfileName}</a>"  
        # vProfileWithURL = "[" + vProfile + "]" + "("+ igMap[vIg] + "StructureDefinition-" + vProfile + ".html)"
      end

      if vProfile.include?("Questionnaire") 
        vProfileWithURL = "<a href='Questionnaire-#{vProfile}"+".html'>#{vProfileName}</a>"  
        # vProfileWithURL = "[" + vProfile + "]" + "(Questionnaire-" + vProfile + ".html)" 
      end
      pOutputFile.puts "<tr>"
      pOutputFile.puts "  <td style='text-align: center'>" + vItemNum + "</td>"
      pOutputFile.puts "  <td>" + vItemName + "</td>"
      pOutputFile.puts "  <td>" + vProfileWithURL + "</td>"
      pOutputFile.puts "  <td>" + vField + "</td>"
      pOutputFile.puts "</tr>"
      # pOutputFile.puts "| " + vItemNum + " | " + vItemName + " | " + vProfileWithURL + " | " + vField + " |"

    end
    pOutputFile.puts "</tbody>"
    pOutputFile.puts "</table>"
  end

# Adding extra processing to map to the Questionnaires
def createMappingTableQaire(pRowFilter, pOutputFile, pSpreadsheet)

  pOutputFile.puts "### " + pRowFilter + " Questionnaire Mapping"
  pOutputFile.puts ""
  pOutputFile.puts "<table  align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>"
  pOutputFile.puts "<thead>"
  pOutputFile.puts "  <tr>"
  pOutputFile.puts "    <th style='background-color:#98c1d9; text-align: center; width: 5%;'><b>Item #</b></th>"
  pOutputFile.puts "    <th style='background-color:#98c1d9; width: 25%;'><b>Form Element</b></th>"
  pOutputFile.puts "    <th style='background-color:#98c1d9; width: 25%;'><b>Questionnaire</b></th>"
  pOutputFile.puts "    <th style='background-color:#98c1d9; width: 20%;'><b>FHIR Field</b></th>"
  pOutputFile.puts "  </tr>"
  pOutputFile.puts "</thead>"
  pOutputFile.puts "<tbody>"
  
  CSV.foreach(pSpreadsheet) do |row|
  
    next if row[FORMS_FORM_COL].to_s != pRowFilter || row[FORMS_PROFILE_COL].to_s == "not implemented"
  
    vElement = vQuestionnaire = vQuestionnaireWithField = vField = ""

    formsElement = row[FORMS_ELEMENT_COL].to_s
    if formsElement.include? ". "
      formsElements = formsElement.strip.split(" ", 2)
      vItemNum = formsElements[0].chomp(".")
      vItemName = formsElements[1]
    else
      vItemNum = "-"
      vItemName = formsElement
    end

    vElement = row[FORMS_ELEMENT_COL].to_s if row[FORMS_ELEMENT_COL]

    vIG = "BFDR"
    vQuestionnaire = row[FORMS_QAIRE_COL].to_s if row[FORMS_QAIRE_COL]
    
    # There's some weirdness with the Roo gem and empty and nil fields - hence double to_s and check for empty hack
    vField = "." + row[FORMS_QAIRE_FIELD_COL].to_s if !row[FORMS_QAIRE_FIELD_COL].to_s.to_s.empty?
    
    vQuestionnaireWithField = vQuestionnaire + vField
    vQuestionnaireWithURL =  "<a href='Questionnaire-#{vQuestionnaire}"+".html'>#{vQuestionnaireWithField}</a>"  
    # vQuestionnaireWithURL = "[" + vQuestionnaireWithField + "]" + "(Questionnaire-" + vQuestionnaire + ".html)"  
        
    pOutputFile.puts "<tr>"
    pOutputFile.puts "  <td style='text-align: center'>" + vItemNum + "</td>"
    pOutputFile.puts "  <td>" + vItemName + "</td>"
    pOutputFile.puts "  <td>" + vQuestionnaireWithURL + "</td>"
    pOutputFile.puts "  <td>" + vField[1..-1] + "</td>"
    pOutputFile.puts "</tr>"
    # pOutputFile.puts "| " + vItemNum + " | " + vItemName + " | " + vQuestionnaireWithURL + " | " + vField[1..-1] + " |"

  end
  pOutputFile.puts ""
  pOutputFile.puts "</tbody>"
  pOutputFile.puts "</table>"
end

createMappingTable( "U.S. Standard Certificate of Death", "https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf", vOutputFile, vSpreadsheet)

