Extension: CityCode
Id: CityCode
Title: "City Code"
Description: "City expressed as a numeric value.  As of the date of publication, in accordance with the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf). (Extension)"
* ^context.type = #element
* ^context.expression = "Address.city"
* value[x] 1..1
* value[x] only positiveInt
//* value[x] obeys digitalCityCode
* value[x] ^maxLength = 5
//* value[x] ^constraint[1].requirements = "The allowable values for city code are detailed in the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf)."
//* value[x] only string
//* valueString from $PHVSCityPlacesNCHS (required)

Extension: DistrictCode
Id: DistrictCode
Title: "District Code"
Description: "District expressed as a numeric value.  As of the date of publication, in accordance with the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf). (Extension)"
//* insert boilerplate
* ^context.type = #element
* ^context.expression = "Address.district"
* value[x] 1..1
* value[x] only positiveInt
//* value[x] obeys digitalCityCode
* value[x] ^maxLength = 5
//* value[x] ^constraint[1].requirements = "The allowable values for district code are detailed in the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf)."
//* value[x] only string
//* valueString from $PHVSDivisionVitalStatisticsCounty (required)



//Invariant: digitalCityCode
//Description: "The  code is a five digit positive integer value between 00000 and 99999 with leading zeroes included. The allowable values for city code are detailed in the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf)."
//Severity: #error
// NEED TO WRITE THE INVARIANT!!!!!!  DO WE NEED THIS INVARIANT????


Extension: PreDirectional
Id: PreDirectional
Title: "PreDirectional"
Description: "PreDirectional"
* insert addressextension(10)
Extension: StreetName
Id: StreetName
Title: "StreetName"
Description: "StreetName"
* insert addressextension(50)
Extension: StreetNumber
Id: StreetNumber
Title: "StreetNumber"
Description: "StreetNumber"
* insert addressextension(10)
Extension: StreetDesignator
Id: StreetDesignator
Title: "StreetDesignator"
Description: "StreetDesignator"
* insert addressextension(10)
Extension: PostDirectional
Id: PostDirectional
Title: "PostDirectional"
Description: "PostDirectional"
* insert addressextension(10)
Extension: UnitOrAptNumber
Id: UnitOrAptNumber
Title: "UnitOrAptNumber"
Description: "UnitOrAptNumber"
* insert addressextension(10)
