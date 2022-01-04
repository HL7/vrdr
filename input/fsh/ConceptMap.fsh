// Concept maps
Instance: condition-status
InstanceOf: ConceptMap
Usage: #definition
* name = "ConditionStatus"
* title = "Condition Status"
* status = #draft
* experimental = true
* date = "2021-12-16"
* publisher = "HL7, Inc"
* contact.name = "FHIR-OMOP Oncology Team (example)"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/fhir"
* description = "A mapping between the FHIR and NCHS IJE Death Location Value Sets"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext.valueCodeableConcept.text = "for FHIR to IJE alignment"
* jurisdiction = urn:iso:std:iso:3166#US
* purpose = "To help implementers map from HL7 FHIR to IJE Vocabulary"
// * group.source =
* group.target = $sct
* group.element[0].code = #3
* group.element[=].display = "Dead on Arrival"
* group.element[=].target.code = #63238001
* group.element[=].target.equivalence = #equivalent
* group.target = $sct
* group.element[0].code = #2
* group.element[=].display = "Emergency Room/Outpatient"
* group.element[=].target.code = #450391000124102
* group.element[=].target.equivalence = #equivalent
/*
* $sct#63238001 "Hospital Dead on Arrival"
* $sct#440081000124100 "Decedent's Home"
* $sct#440071000124103 "Hospice"
* $sct#16983000 "Hospital Inpatient"
* $sct#450391000124102  "Death in emergency Room/Outpatient"
* $sct#450381000124100 "Death in nursing home/Long term care facility"
* $v3-NullFlavor#OTH "other"
* $v3-NullFlavor#UNK "unknown"
*/