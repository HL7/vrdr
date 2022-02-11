Profile: CauseOfDeathPathway
Parent: List
Id: vrdr-cause-of-death-pathway
Title: "Cause of Death Pathway"
Description: """VRDR Cause of Death Pathway is an ordered list of cause of death conditions (List).  The source of VRDR Cause of Death Pathway (LIST.source) is a cause of death certifier.
"""
* insert boilerplate
* id 0..1
* status 1..1
* status only code
* status = #current (exactly)
* mode 1..1
* mode only code
* mode = #snapshot (exactly)
* source 1..1
* source only Reference(Certifier)
* orderedBy 1..1
* orderedBy only CodeableConcept
* orderedBy = $list-order#priority "Sorted by Priority" (exactly)
* entry 1..5
* entry.item 1..1
* entry.item only Reference(CauseOfDeathCondition)