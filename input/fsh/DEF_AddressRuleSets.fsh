RuleSet: CityCode
* address.city.extension contains
    CityCode named cityCode 0..1
* address.city.extension[cityCode] ^label = "City Code"
* address.city.extension[cityCode] ^short = "City Code"
* address.city.extension[cityCode] ^definition = "Numeric code from in accordance with the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf) and https://ftp.cdc.gov/pub/health_Statistics/nchs/Manuals/Mortality/PLACE_CODES.txt."

RuleSet: CountyCode
* address.district.extension contains
    DistrictCode named districtCode 0..1
* address.district.extension[districtCode] ^label = "County code"
* address.district.extension[districtCode] ^short = "County code"
// Add usage note that codes are from: https://ftp.cdc.gov/pub/health_Statistics/nchs/Manuals/Mortality/PLACE_CODES.txt and
* address.district.extension[districtCode] ^definition = "Numeric code in accordance with the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf) and https://ftp.cdc.gov/pub/health_Statistics/nchs/Manuals/Mortality/PLACE_CODES.txt."

// See https://gisweb.miamidade.gov/addresssearch/Standards/DC_USPS_Address_Standards.pdf
// for an address like: 5576 S Miami Ave E  Apt 13
RuleSet: AddressComponents
* address.extension contains
   PreDirectional named predir 0..1 and // S
   StreetNumber named stnum 0..1 and    // 5576
   StreetName named stname 0..1 and     // Miami
   StreetDesignator named stdesig 0..1 and // Ave
   PostDirectional named postdir 0..1 and // E
   UnitOrAptNumber named unitnumber 0..1 // Apt 13

RuleSet: addressextension(length)
//* . ^short = "label"
* ^context.type = #element
* ^context.expression = "Address"
* value[x] 1..1
* value[x] only string
* value[x] ^maxLength = {length}