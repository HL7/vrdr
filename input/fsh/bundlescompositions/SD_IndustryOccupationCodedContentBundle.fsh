Profile: IndustryOccupationCodedContentBundle
Parent: Bundle
Id: industry-occupation-coded-content-bundle
Title: "Industry Occupation Coded Content Bundle"
Description: "Industry and Occupation Coded Content Bundle (Bundle):  A bundle containing  coded industry and occupation data for a decedent.   This bundle is information-content equivalent to the tranditional MIO files."
* insert RequireMetaProfile(CodedContentDocument)
* insert BundleIdentifiers
* type 1..1
* type only code
* type = #collection (exactly)
* entry.resource 1..1 // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile"
* insert BundleSlice(CodedIndustryAndOccupation,  0, 1, DecedentUsualWork, DecedentUsualWork,  DecedentUsualWork)


