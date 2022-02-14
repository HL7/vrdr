Extension: CityCode
Id: CityCode
Title: "Address City Code"
Description: "Numeric value in accordance with the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf). (Extension)"
* insert boilerplate
* ^context.type = #element
* ^context.expression = "Address.city"
* value[x] 1..1
* value[x] only positiveInt
* value[x] obeys digitalCityCode
* value[x] ^maxLength = 5
* value[x] ^constraint[1].requirements = "The allowable values for city code are detailed in the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf)."
//* value[x] only string
//* valueString from $PHVSCityPlacesNCHS (required)

Extension: DistrictCode
Id: DistrictCode
Title: "District Code"
Description: "District expressed as a numeric value in accordance with the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf). (Extension)"
* insert boilerplate
* ^context.type = #element
* ^context.expression = "Address.district"
* value[x] 1..1
* value[x] only positiveInt
* value[x] obeys digitalCityCode
* value[x] ^maxLength = 5
* value[x] ^constraint[1].requirements = "The allowable values for district code are detailed in the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf)."
//* value[x] only string
//* valueString from $PHVSDivisionVitalStatisticsCounty (required)



Invariant: digitalCityCode
Description: "The  code is a five digit positive integer value between 00000 and 99999 with leading zeroes included. The allowable values for city code are detailed in the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf)."
Severity: #error
// NEED TO WRITE THE INVARIANT!!!!!!  DO WE NEED THIS INVARIANT????