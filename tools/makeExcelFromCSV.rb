require 'roo'
require 'write_xlsx'
# Open the CSV file
csv = Roo::CSV.new('./input/mapping/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv')
# Create a hash to store the data for each sheet
rows = {}
sheets = {}
header_row = []
# Loop through each row in the CSV file
csv.each_with_index do |row, index|
  if index == 0
    header_row = row
    next
  end
  # Get the value of the first column (unique index)
  value = row[0]
  rows[value] ||= []
  # Add the row to the array for this value
  rows[value] << row
  # get use case (e.g. mortality) and start the row index at 0 for writing
  flow = row[1]
  sheets[flow] = 0
end
# Create a new Excel workbook
workbook = WriteXLSX.new('./input/images/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.xlsx')
# Loop through each use case
font = {
  bold: 1
}
alignment = {
  align: 1
}

header_formats = {}
hex_colors = {'Mortality' => ['#CCFFCC', 8], 'Surveillance' => ['#CCFFCC', 8], 'Mortality Roster' => ['#FF99CC', 9],
              'Natality' => ['#CCFFFF', 10], 'Fetal Death' => ['#FFCC99', 11], 'ITOP' => ['#CC99FF', 12], 'Birth Infant Death' => ['#C4BD97', 13]}
hex_colors.each do |use,color|
  workbook.set_custom_color(hex_colors[use][1], hex_colors[use][0])
end 
ije_format = workbook.add_format(bold: 1)
long_format = workbook.add_format(text_wrap: 1)
sheets.each_with_index do |(use_case, line), idx|
  # Create a new worksheet for use case
  worksheet = workbook.add_worksheet(use_case.to_s)
  header_formats[use_case] = workbook.add_format(bold: 1, align: 'center', valign: 'vcenter', bg_color: hex_colors[use_case][0], text_wrap: 1)
  worksheet.autofilter('A1:R400')
  worksheet.set_column(0, 17, 16)
  worksheet.set_column(4, 4, 32)
  worksheet.set_column(6, 6, 32)
  worksheet.set_column(9, 10, 32)
  worksheet.set_column(12, 12, 32)
  worksheet.set_column(13, 13, 32)
  # add header row
  header_row.each_with_index do |col, index|
    next if index == 1
    if index >= 1
      index -= 1
    end
    worksheet.write(0, index, col, header_formats[use_case])
    worksheet.tab_color = hex_colors[use_case][1]
  end
  rows.each do |value, row|
    next if row[0][1] != use_case
    # Loop through each row
    row.each do |r|
      line +=1
      # Loop through each column
      r.each_with_index do |cell, cell_index|
        # Write the cell to the worksheet
        next if cell_index == 1
        if cell_index >= 1
          cell_index -= 1
        end
        if cell_index == 5
          worksheet.write(line, cell_index, cell, ije_format)
        elsif cell_index == 4 || cell_index == 6 || cell_index == 10 || cell_index == 11 || cell_index == 13 || cell_index == 15
          worksheet.write(line, cell_index, cell, long_format)
        else
          worksheet.write(line, cell_index, cell)
        end
      end
    end
  end
end
puts 'regenerated excel sheets'
# Close the workbook
workbook.close
