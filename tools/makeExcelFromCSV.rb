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
sheets.each do |use_case, line|
  # Create a new worksheet for this value
  worksheet = workbook.add_worksheet(use_case.to_s)
  # add header
  header_row.each_with_index do |col, index|
    worksheet.write(0, index, col)
  end
  rows.each_with_index do |(value, row), index|
    next if row[0][1] != use_case
    # Loop through each row
    row.each do |r|
      line +=1
      # Loop through each column
      r.each_with_index do |cell, cell_index|
        # Write the cell to the worksheet
        worksheet.write(line, cell_index, cell)
      end
    end
  end
end
# Close the workbook
workbook.close