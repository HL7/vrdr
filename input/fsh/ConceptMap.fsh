// Concept maps
Instance: place-of-death
InstanceOf: ConceptMap
Usage: #definition
* name = "Place of Death"
* title = "Place of Death"
* status = #draft
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/fhir"
* description = "A mapping between NCHS IJE and FHIR Death Location Value Sets"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext.valueCodeableConcept.text = "for IJE to FHIR alignment"
* jurisdiction = urn:iso:std:iso:3166#US
* purpose = "To help implementers map from IJE to FHIR Vocabulary"
* targetCanonical = Canonical(PlaceOfDeathVS)
// * group.source =
/*
1 = Inpatient
2 = Emergency Room/Outpatient
3 = Dead on Arrival
4 = Decedent's Home
5 = Hospice Facility
6 = Nursing Home/Long Term Care Facility
7 = Other
9 = Unknown

* $sct#63238001 "Hospital Dead on Arrival"
* $sct#440081000124100 "Decedent's Home"
* $sct#440071000124103 "Hospice"
* $sct#16983000 "Hospital Inpatient"
* $sct#450391000124102  "Death in emergency Room/Outpatient"
* $sct#450381000124100 "Death in nursing home/Long term care facility"
* $v3-NullFlavor#OTH "other"
* $v3-NullFlavor#UNK "unknown"
*/
* group[+].target = $sct
* group[=].element[+].code = #1
* group[=].element[=].display = "Inpatient"
* group[=].element[=].target.code = #16983000
* group[=].element[=].target.display = "Hospital Inpatient"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #2
* group[=].element[=].display = "Emergency Room/Outpatient"
* group[=].element[=].target.code = #450391000124102
* group[=].element[=].target.display = "Death in emergency Room/Outpatient"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #3
* group[=].element[=].display = "Dead on Arrival"
* group[=].element[=].target.display = "Hospital Dead on Arrival"
* group[=].element[=].target.code = #63238001
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #4
* group[=].element[=].display = "Decedent's Home"
* group[=].element[=].target.display = "Decedent's Home"
* group[=].element[=].target.code = #440081000124100
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #5
* group[=].element[=].display = "Hospice"
* group[=].element[=].target.display = "Hospice Facility"
* group[=].element[=].target.code = #440071000124103
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #6
* group[=].element[=].display = "Nursing Home/Long Term Care Facility"
* group[=].element[=].target.display = "Death in nursing home/Long term care facility"
* group[=].element[=].target.code = #450381000124100
* group[=].element[=].target.equivalence = #equivalent
* group[+].target = $v3-NullFlavor
* group[=].element[+].code = #7
* group[=].element[=].display = "Other"
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.code = #OTH
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #9
* group[=].element[=].display = "Unknown"
* group[=].element[=].target.display = "Unknown"
* group[=].element[=].target.code = #UNK
* group[=].element[=].target.equivalence = #equivalent
