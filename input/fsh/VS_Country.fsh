ValueSet: ResidenceCountryVS
Id: vrdr-residence-country-vs
Title: "Residence Country Value Set"
Description: "2 Letter REsidence Country Codes from GEC and ISO 3166-1.  Excludes historic countries that no longer exist"
* include codes from system CountryCodeCS
* exclude CountryCodeCS#EQ
* exclude CountryCodeCS#CL
* exclude CountryCodeCS#CZ
* exclude CountryCodeCS#DM
* exclude CountryCodeCS#EB
* exclude CountryCodeCS#GC
* exclude CountryCodeCS#GE
* exclude CountryCodeCS#FT
* exclude CountryCodeCS#GS
* exclude CountryCodeCS#GN
* exclude CountryCodeCS#IY
* exclude CountryCodeCS#IW
* exclude CountryCodeCS#IU
* exclude CountryCodeCS#NT
* exclude CountryCodeCS#VN
* exclude CountryCodeCS#PN
* exclude CountryCodeCS#PQ
* exclude CountryCodeCS#RH
* exclude CountryCodeCS#YQ
* exclude CountryCodeCS#YI
* exclude CountryCodeCS#SK
* exclude CountryCodeCS#VS
* exclude CountryCodeCS#UR
* exclude CountryCodeCS#SS
* exclude CountryCodeCS#JS
* exclude CountryCodeCS#SQ
* exclude CountryCodeCS#TQ
* exclude CountryCodeCS#TC
* exclude CountryCodeCS#IQ
* exclude CountryCodeCS#WB
* exclude CountryCodeCS#YS
* exclude CountryCodeCS#YE

ValueSet: BirthplaceCountryVS
Id: vrdr-birthplace-country-vs
Title: "Birthplace Country Value Set"
Description: "2 Letter Birthplace Country Codes from GEC and ISO 3166-1.  Includes historic countries that no longer exist."
* include codes from system CountryCodeCS
