Instance: PlaceOfDeathCM
InstanceOf: ConceptMap
Usage: #definition
* insert ConceptMapIntro(Place of Death, PlaceOfDeathVS)
* insert AddGroup("IJE",$sct)
* insert MapConcept(#1, "Inpatient", #16983000, "Hospital Inpatient")
* insert MapConcept(#2, "Emergency Room/Outpatient", #450391000124102, "Death in emergency Room/Outpatient")
* insert MapConcept(#3, "Dead on Arrival", #63238001, "Hospital Dead on Arrival")
* insert MapConcept(#4, "Decedent's Home", #440081000124100, "Decedent's Home")
* insert MapConcept(#5, "Hospice", #440071000124103, "Hospice Facility")
* insert MapConcept(#6, "Nursing Home/Long Term Care Facility", #450381000124100, "Death in nursing home/Long term care facility")
* insert AddGroup("IJE",$v3-NullFlavor)
* insert MapConcept(#7, "Other", #OTH, "Other")
* insert MapConcept(#9, "Unknown", #UNK, "Unknown")
