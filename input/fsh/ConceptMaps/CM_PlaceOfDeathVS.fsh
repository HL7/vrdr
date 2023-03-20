Instance: PlaceOfDeathCM
InstanceOf: ConceptMap
// Id: vrdr-place-of-death-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(PlaceOfDeath, PlaceOfDeathVS)
* insert AddGroup("IJE",$sct)
* insert MapConcept( #1,  "Inpatient",#16983000, "Death in hospital")
* insert MapConcept( #2,  "Emergency Room/Outpatient",#450391000124102, "Death in hospital-based emergency department or outpatient department")
* insert MapConcept( #3,  "Dead on Arrival",#63238001, "Dead on arrival at hospital")
* insert MapConcept( #4,  "Decedent's Home",#440081000124100, "Death in home")
* insert MapConcept( #5,  "Hospice Facility",#440071000124103, "Death in hospice")
* insert MapConcept( #6,  "Nursing Home/Long Term Care Facility",#450381000124100, "Death in nursing home or long term care facility")
* insert AddGroup("IJE",$v3-NullFlavor)
* insert MapConcept( #7,  "Other",#OTH, "other")
* insert MapConcept( #9,  "Unknown",#UNK, "unknown")
